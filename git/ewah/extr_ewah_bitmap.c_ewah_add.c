
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ewah_bitmap {int bit_size; } ;
typedef scalar_t__ eword_t ;


 scalar_t__ BITS_IN_EWORD ;
 size_t add_empty_word (struct ewah_bitmap*,int) ;
 size_t add_literal (struct ewah_bitmap*,scalar_t__) ;

size_t ewah_add(struct ewah_bitmap *self, eword_t word)
{
 self->bit_size += BITS_IN_EWORD;

 if (word == 0)
  return add_empty_word(self, 0);

 if (word == (eword_t)(~0))
  return add_empty_word(self, 1);

 return add_literal(self, word);
}
