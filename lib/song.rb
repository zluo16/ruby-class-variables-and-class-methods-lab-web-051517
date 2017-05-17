class Song

  attr_accessor
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = Array.new
  @@genres = Array.new

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    counted_genres = Hash.new
    @@genres.each do |genre|
      if counted_genres.keys.include?(genre)
        counted_genres[genre] += 1
      else
        counted_genres[genre] = 1
      end
    end
    counted_genres
  end

  def self.artist_count
    counted_artists = Hash.new
    @@artists.each do |artist|
      if counted_artists.keys.include?(artist)
        counted_artists[artist] += 1
      else
        counted_artists[artist] = 1
      end
    end
    counted_artists
  end

end
