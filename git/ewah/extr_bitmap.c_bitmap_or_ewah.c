
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ewah_iterator {int dummy; } ;
struct ewah_bitmap {int bit_size; } ;
struct bitmap {size_t word_alloc; int * words; } ;
typedef int eword_t ;


 int BITS_IN_EWORD ;
 int REALLOC_ARRAY (int *,size_t) ;
 int ewah_iterator_init (struct ewah_iterator*,struct ewah_bitmap*) ;
 scalar_t__ ewah_iterator_next (int *,struct ewah_iterator*) ;
 int memset (int *,int,size_t) ;

void bitmap_or_ewah(struct bitmap *self, struct ewah_bitmap *other)
{
 size_t original_size = self->word_alloc;
 size_t other_final = (other->bit_size / BITS_IN_EWORD) + 1;
 size_t i = 0;
 struct ewah_iterator it;
 eword_t word;

 if (self->word_alloc < other_final) {
  self->word_alloc = other_final;
  REALLOC_ARRAY(self->words, self->word_alloc);
  memset(self->words + original_size, 0x0,
   (self->word_alloc - original_size) * sizeof(eword_t));
 }

 ewah_iterator_init(&it, other);

 while (ewah_iterator_next(&word, &it))
  self->words[i++] |= word;
}
