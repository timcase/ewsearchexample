class SearchesController < ApplicationController
  def index
  end

  def create
    @search_term = params[:keyword]
    @artists = Echowrap.artist_search(name: @search_term, bucket: ['images', 'artist_location'])
    render 'index'
  end
end
