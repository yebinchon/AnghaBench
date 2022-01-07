
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap {size_t word_alloc; int * words; } ;
typedef int eword_t ;


 size_t EWAH_BLOCK (size_t) ;
 int EWAH_MASK (size_t) ;
 int REALLOC_ARRAY (int *,size_t) ;
 int memset (int *,int,size_t) ;

void bitmap_set(struct bitmap *self, size_t pos)
{
 size_t block = EWAH_BLOCK(pos);

 if (block >= self->word_alloc) {
  size_t old_size = self->word_alloc;
  self->word_alloc = block * 2;
  REALLOC_ARRAY(self->words, self->word_alloc);
  memset(self->words + old_size, 0x0,
   (self->word_alloc - old_size) * sizeof(eword_t));
 }

 self->words[block] |= EWAH_MASK(pos);
}
