
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ewah_bitmap {int buffer_size; int alloc_size; int * buffer; } ;
typedef int eword_t ;


 int buffer_grow (struct ewah_bitmap*,int) ;

__attribute__((used)) static inline void buffer_push(struct ewah_bitmap *self, eword_t value)
{
 if (self->buffer_size + 1 >= self->alloc_size)
  buffer_grow(self, self->buffer_size * 3 / 2);

 self->buffer[self->buffer_size++] = value;
}
