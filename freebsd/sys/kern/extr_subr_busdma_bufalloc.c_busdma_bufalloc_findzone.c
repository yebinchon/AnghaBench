
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct busdma_bufzone {scalar_t__ size; } ;
typedef TYPE_1__* busdma_bufalloc_t ;
typedef scalar_t__ bus_size_t ;
struct TYPE_3__ {int num_zones; struct busdma_bufzone* buf_zones; } ;


 scalar_t__ MAX_ZONE_BUFSIZE ;
 int panic (char*) ;

struct busdma_bufzone *
busdma_bufalloc_findzone(busdma_bufalloc_t ba, bus_size_t size)
{
 struct busdma_bufzone *bz;
 int i;

 if (size > MAX_ZONE_BUFSIZE)
  return (((void*)0));

 for (i = 0, bz = ba->buf_zones; i < ba->num_zones; ++i, ++bz) {
  if (bz->size >= size)
   return (bz);
 }

 panic("Didn't find a buffer zone of the right size");
}
