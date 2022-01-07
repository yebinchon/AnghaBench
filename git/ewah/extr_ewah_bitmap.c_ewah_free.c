
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ewah_bitmap {struct ewah_bitmap* buffer; scalar_t__ alloc_size; } ;


 int free (struct ewah_bitmap*) ;

void ewah_free(struct ewah_bitmap *self)
{
 if (!self)
  return;

 if (self->alloc_size)
  free(self->buffer);

 free(self);
}
