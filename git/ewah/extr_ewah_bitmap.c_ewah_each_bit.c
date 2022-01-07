
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ewah_bitmap {size_t buffer_size; int* buffer; } ;
typedef int eword_t ;


 size_t BITS_IN_EWORD ;
 size_t rlw_get_literal_words (int*) ;
 scalar_t__ rlw_get_run_bit (int*) ;
 size_t rlw_get_running_len (int*) ;

void ewah_each_bit(struct ewah_bitmap *self, void (*callback)(size_t, void*), void *payload)
{
 size_t pos = 0;
 size_t pointer = 0;
 size_t k;

 while (pointer < self->buffer_size) {
  eword_t *word = &self->buffer[pointer];

  if (rlw_get_run_bit(word)) {
   size_t len = rlw_get_running_len(word) * BITS_IN_EWORD;
   for (k = 0; k < len; ++k, ++pos)
    callback(pos, payload);
  } else {
   pos += rlw_get_running_len(word) * BITS_IN_EWORD;
  }

  ++pointer;

  for (k = 0; k < rlw_get_literal_words(word); ++k) {
   int c;


   for (c = 0; c < BITS_IN_EWORD; ++c, ++pos) {
    if ((self->buffer[pointer] & ((eword_t)1 << c)) != 0)
     callback(pos, payload);
   }

   ++pointer;
  }
 }
}
