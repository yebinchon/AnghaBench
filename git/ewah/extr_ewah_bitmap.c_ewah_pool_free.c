
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ewah_bitmap {scalar_t__ alloc_size; } ;


 scalar_t__ BITMAP_POOL_MAX ;
 struct ewah_bitmap** bitmap_pool ;
 scalar_t__ bitmap_pool_size ;
 int ewah_clear (struct ewah_bitmap*) ;
 int ewah_free (struct ewah_bitmap*) ;

void ewah_pool_free(struct ewah_bitmap *self)
{
 if (self == ((void*)0))
  return;

 if (bitmap_pool_size == BITMAP_POOL_MAX ||
  self->alloc_size == 0) {
  ewah_free(self);
  return;
 }

 ewah_clear(self);
 bitmap_pool[bitmap_pool_size++] = self;
}
