class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end

    def show
        @article = Article.find(params[:id])
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.new(task_params)
        @article.save
    end

    private

    def task_params
        params.require(:task).permit(:title, :content)
    end



end
