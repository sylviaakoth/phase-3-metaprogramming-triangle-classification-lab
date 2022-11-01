class Triangle

  def initialize sideOne, sideTwo, sideThree
    @sideOne = sideOne
    @sideTwo = sideTwo
    @sideThree = sideThree
  end
  def kind
    triangle_sides = [@sideOne, @sideTwo, @sideThree].sort
    if triangle_sides.any?{|side| side <= 0} || (triangle_sides[0] + triangle_sides[1] <= triangle_sides[2])
      raise TriangleError
    elsif @sideOne == @sideTwo && @sideOne == @sideThree
      :equilateral
    elsif @sideOne == @sideTwo || @sideOne == @sideThree || @sideTwo == @sideThree
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end

end
