
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ewah_bitmap {int buffer_size; scalar_t__* buffer; scalar_t__* rlw; scalar_t__ bit_size; } ;



__attribute__((used)) static void ewah_clear(struct ewah_bitmap *self)
{
 self->buffer_size = 1;
 self->buffer[0] = 0;
 self->bit_size = 0;
 self->rlw = self->buffer;
}
