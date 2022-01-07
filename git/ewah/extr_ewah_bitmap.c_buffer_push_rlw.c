
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ewah_bitmap {scalar_t__ buffer_size; scalar_t__ buffer; scalar_t__ rlw; } ;
typedef int eword_t ;


 int buffer_push (struct ewah_bitmap*,int ) ;

__attribute__((used)) static void buffer_push_rlw(struct ewah_bitmap *self, eword_t value)
{
 buffer_push(self, value);
 self->rlw = self->buffer + self->buffer_size - 1;
}
