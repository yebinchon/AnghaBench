
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef int bus_dmamap_t ;
typedef int bus_dma_tag_t ;
struct TYPE_3__ {int ds_len; scalar_t__ ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;


 int _bus_dmamap_load_phys (int ,int ,int ,int ,int,int *,int*) ;

__attribute__((used)) static int
_bus_dmamap_load_plist(bus_dma_tag_t dmat, bus_dmamap_t map,
    bus_dma_segment_t *list, int sglist_cnt, int *nsegs, int flags)
{
 int error;

 error = 0;
 for (; sglist_cnt > 0; sglist_cnt--, list++) {
  error = _bus_dmamap_load_phys(dmat, map,
      (vm_paddr_t)list->ds_addr, list->ds_len, flags, ((void*)0),
      nsegs);
  if (error)
   break;
 }
 return (error);
}
