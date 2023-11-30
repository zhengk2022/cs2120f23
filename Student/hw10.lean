namespace dog_likes_cat

-- 1. Every dog likes some cat.
variable
  (Dog : Type)
  (Cat : Type)
  (Likes : Dog → Cat → Prop)
  (every_dog_likes_cat: ∀ (d: Dog), ∃ (c : Cat), Likes d c )
  #check every_dog_likes_cat
end dog_likes_cat


namespace dog_likes

-- 2. If any dog, d, likes any dog, g, and that dog, g, likes any dog, w, then d likes w.
variable
  (Dog : Type)
  (Likes: Dog → Dog → Prop)
  (dog_likes_any_dog : ∀ (d g w: Dog), Likes d g → Likes g w → Likes d w)
  #check dog_likes_any_dog
end dog_likes

namespace cat_likes
-- 3.  If any cat, c, likes any cat, d, then d also likes c.
variable
  (Cat: Type)
  (Likes: Cat → Cat → Prop)
  (cat_likes_cat : ∀ (c d: Cat), Likes c d → Likes d c)
  #check cat_likes_cat
end cat_likes

namespace cat_itself

-- 4. Every cat, c, likes itself.
variable
  (Cat: Type)
  (Likes: Cat → Cat → Prop)
  (cat_likes_itself: ∀ (c: Cat), Likes c c)
  #check cat_likes_itself
end cat_itself

namespace every_cat_likes_cat

--5. if every cat likes every other cat, and c and d are cats, then c likes d.
variable
  (Cat: Type)
  (Likes: Cat → Cat → Prop)
  (every_cat_likes_every_other_cat : ∀ (c d : Cat), Likes c d )
  #check every_cat_likes_every_other_cat



-- formal proof for problem #5

example (c d : Cat) : Likes c d :=
  every_cat_likes_every_other_cat c d

end every_cat_likes_cat
