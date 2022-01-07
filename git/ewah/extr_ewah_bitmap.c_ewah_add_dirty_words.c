
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ewah_bitmap {size_t buffer_size; size_t alloc_size; size_t bit_size; int * buffer; int rlw; } ;
typedef int eword_t ;


 size_t BITS_IN_EWORD ;
 scalar_t__ RLW_LARGEST_LITERAL_COUNT ;
 int buffer_grow (struct ewah_bitmap*,size_t) ;
 int buffer_push_rlw (struct ewah_bitmap*,int ) ;
 int memcpy (int *,int const*,size_t) ;
 size_t min_size (size_t,scalar_t__) ;
 size_t rlw_get_literal_words (int ) ;
 int rlw_set_literal_words (int ,size_t) ;

void ewah_add_dirty_words(
 struct ewah_bitmap *self, const eword_t *buffer,
 size_t number, int negate)
{
 size_t literals, can_add;

 while (1) {
  literals = rlw_get_literal_words(self->rlw);
  can_add = min_size(number, RLW_LARGEST_LITERAL_COUNT - literals);

  rlw_set_literal_words(self->rlw, literals + can_add);

  if (self->buffer_size + can_add >= self->alloc_size)
   buffer_grow(self, (self->buffer_size + can_add) * 3 / 2);

  if (negate) {
   size_t i;
   for (i = 0; i < can_add; ++i)
    self->buffer[self->buffer_size++] = ~buffer[i];
  } else {
   memcpy(self->buffer + self->buffer_size,
    buffer, can_add * sizeof(eword_t));
   self->buffer_size += can_add;
  }

  self->bit_size += can_add * BITS_IN_EWORD;

  if (number - can_add == 0)
   break;

  buffer_push_rlw(self, 0);
  buffer += can_add;
  number -= can_add;
 }
}
