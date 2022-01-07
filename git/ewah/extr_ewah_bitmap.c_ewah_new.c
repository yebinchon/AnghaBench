
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ewah_bitmap {int alloc_size; int buffer; } ;


 int ALLOC_ARRAY (int ,int) ;
 int ewah_clear (struct ewah_bitmap*) ;
 struct ewah_bitmap* xmalloc (int) ;

struct ewah_bitmap *ewah_new(void)
{
 struct ewah_bitmap *self;

 self = xmalloc(sizeof(struct ewah_bitmap));
 self->alloc_size = 32;
 ALLOC_ARRAY(self->buffer, self->alloc_size);

 ewah_clear(self);
 return self;
}
