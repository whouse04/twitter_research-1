
class SearchesController < ApplicationController

  def index
  end

  def show
    searcher = SimpleTwitter::Search.new
    flash.notice = "I just did your search"
    flash.alert = "Blow me"
    @results = searcher.search(params[:q])

  end

end
