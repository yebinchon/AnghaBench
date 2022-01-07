
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap {size_t word_alloc; int * words; } ;


 scalar_t__ ewah_bit_popcount64 (int ) ;

size_t bitmap_popcount(struct bitmap *self)
{
 size_t i, count = 0;

 for (i = 0; i < self->word_alloc; ++i)
  count += ewah_bit_popcount64(self->words[i]);

 return count;
}
