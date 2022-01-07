
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ewah_bitmap {size_t bit_size; } ;


 size_t BITS_IN_EWORD ;
 size_t add_empty_words (struct ewah_bitmap*,int,size_t) ;

size_t ewah_add_empty_words(struct ewah_bitmap *self, int v, size_t number)
{
 if (number == 0)
  return 0;

 self->bit_size += number * BITS_IN_EWORD;
 return add_empty_words(self, v, number);
}
