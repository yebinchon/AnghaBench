
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct busdma_bufzone {int umazone; } ;
typedef TYPE_1__* busdma_bufalloc_t ;
struct TYPE_4__ {int num_zones; struct busdma_bufzone* buf_zones; } ;


 int M_DEVBUF ;
 int free (TYPE_1__*,int ) ;
 int uma_zdestroy (int ) ;

void
busdma_bufalloc_destroy(busdma_bufalloc_t ba)
{
 struct busdma_bufzone *bz;
 int i;

 if (ba == ((void*)0))
  return;

 for (i = 0, bz = ba->buf_zones; i < ba->num_zones; ++i, ++bz) {
  uma_zdestroy(bz->umazone);
 }

 free(ba, M_DEVBUF);
}
