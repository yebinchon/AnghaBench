
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap {size_t word_alloc; int * words; } ;



void bitmap_and_not(struct bitmap *self, struct bitmap *other)
{
 const size_t count = (self->word_alloc < other->word_alloc) ?
  self->word_alloc : other->word_alloc;

 size_t i;

 for (i = 0; i < count; ++i)
  self->words[i] &= ~other->words[i];
}
