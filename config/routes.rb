Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
    resources :books, only: [:new, :create, :index, :show, :destroy] do
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
end
