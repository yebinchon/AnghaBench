
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef scalar_t__ bus_size_t ;
typedef TYPE_1__* bus_dmamap_t ;
typedef TYPE_2__* bus_dma_tag_t ;
typedef int bus_dma_segment_t ;
typedef int bus_addr_t ;
struct TYPE_17__ {int flags; int maxsegsz; int * segments; } ;
struct TYPE_16__ {scalar_t__ pagesneeded; } ;


 int BUS_DMA_COULD_BOUNCE ;
 int EFBIG ;
 scalar_t__ MIN (scalar_t__,int ) ;
 int PAGE_SIZE ;
 scalar_t__ _bus_dmamap_addseg (TYPE_2__*,TYPE_1__*,int ,scalar_t__,int *,int*) ;
 int _bus_dmamap_count_phys (TYPE_2__*,TYPE_1__*,int ,scalar_t__,int) ;
 int _bus_dmamap_reserve_pages (TYPE_2__*,TYPE_1__*,int) ;
 int add_bounce_page (TYPE_2__*,TYPE_1__*,int ,int ,scalar_t__) ;
 int bus_dmamap_unload (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ run_filter (TYPE_2__*,int ) ;

int
_bus_dmamap_load_phys(bus_dma_tag_t dmat, bus_dmamap_t map,
    vm_paddr_t buf, bus_size_t buflen, int flags, bus_dma_segment_t *segs,
    int *segp)
{
 bus_addr_t curaddr;
 bus_size_t sgsize;
 int error;

 if (segs == ((void*)0))
  segs = dmat->segments;

 if ((dmat->flags & BUS_DMA_COULD_BOUNCE) != 0) {
  _bus_dmamap_count_phys(dmat, map, buf, buflen, flags);
  if (map->pagesneeded != 0) {
   error = _bus_dmamap_reserve_pages(dmat, map, flags);
   if (error)
    return (error);
  }
 }

 while (buflen > 0) {
  curaddr = buf;
  sgsize = MIN(buflen, dmat->maxsegsz);
  if (((dmat->flags & BUS_DMA_COULD_BOUNCE) != 0) &&
      map->pagesneeded != 0 && run_filter(dmat, curaddr)) {
   sgsize = MIN(sgsize, PAGE_SIZE);
   curaddr = add_bounce_page(dmat, map, 0, curaddr,
       sgsize);
  }
  sgsize = _bus_dmamap_addseg(dmat, map, curaddr, sgsize, segs,
      segp);
  if (sgsize == 0)
   break;
  buf += sgsize;
  buflen -= sgsize;
 }




 if (buflen != 0) {
  bus_dmamap_unload(dmat, map);
  return (EFBIG);
 }
 return (0);
}
