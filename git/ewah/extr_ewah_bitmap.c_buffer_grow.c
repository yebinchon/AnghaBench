
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ewah_bitmap {size_t alloc_size; scalar_t__ buffer; scalar_t__ rlw; } ;
typedef int eword_t ;


 int REALLOC_ARRAY (scalar_t__,size_t) ;

__attribute__((used)) static inline void buffer_grow(struct ewah_bitmap *self, size_t new_size)
{
 size_t rlw_offset = (uint8_t *)self->rlw - (uint8_t *)self->buffer;

 if (self->alloc_size >= new_size)
  return;

 self->alloc_size = new_size;
 REALLOC_ARRAY(self->buffer, self->alloc_size);
 self->rlw = self->buffer + (rlw_offset / sizeof(eword_t));
}
