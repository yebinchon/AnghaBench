
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap {size_t word_alloc; int* words; } ;


 size_t EWAH_BLOCK (size_t) ;
 int EWAH_MASK (size_t) ;

int bitmap_get(struct bitmap *self, size_t pos)
{
 size_t block = EWAH_BLOCK(pos);
 return block < self->word_alloc &&
  (self->words[block] & EWAH_MASK(pos)) != 0;
}
