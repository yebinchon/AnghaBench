
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bhyvegc {int raw; TYPE_1__* gc_image; } ;
struct TYPE_2__ {void* data; } ;


 int free (void*) ;

void
bhyvegc_set_fbaddr(struct bhyvegc *gc, void *fbaddr)
{
 gc->raw = 1;
 if (gc->gc_image->data && gc->gc_image->data != fbaddr)
  free(gc->gc_image->data);
 gc->gc_image->data = fbaddr;
}
