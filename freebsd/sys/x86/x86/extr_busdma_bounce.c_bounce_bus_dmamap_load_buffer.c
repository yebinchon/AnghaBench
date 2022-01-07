
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ pmap_t ;
typedef scalar_t__ bus_size_t ;
typedef TYPE_1__* bus_dmamap_t ;
typedef TYPE_2__* bus_dma_tag_t ;
typedef int bus_dma_segment_t ;
struct TYPE_17__ {scalar_t__ maxsegsz; int alignment; } ;
struct TYPE_16__ {int bounce_flags; TYPE_4__ common; int * segments; } ;
struct TYPE_15__ {scalar_t__ pagesneeded; } ;


 int BUS_DMA_COULD_BOUNCE ;
 int EFBIG ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ _bus_dmamap_addseg (TYPE_2__*,TYPE_1__*,int,scalar_t__,int *,int*) ;
 int _bus_dmamap_count_pages (TYPE_2__*,TYPE_1__*,scalar_t__,void*,scalar_t__,int) ;
 int _bus_dmamap_reserve_pages (TYPE_2__*,TYPE_1__*,int) ;
 int add_bounce_page (TYPE_2__*,TYPE_1__*,scalar_t__,int,int ,scalar_t__) ;
 scalar_t__ bus_dma_run_filter (TYPE_4__*,int) ;
 scalar_t__ kernel_pmap ;
 TYPE_1__ nobounce_dmamap ;
 int pmap_extract (scalar_t__,scalar_t__) ;
 int pmap_kextract (scalar_t__) ;
 scalar_t__ roundup2 (scalar_t__,int ) ;

__attribute__((used)) static int
bounce_bus_dmamap_load_buffer(bus_dma_tag_t dmat, bus_dmamap_t map, void *buf,
    bus_size_t buflen, pmap_t pmap, int flags, bus_dma_segment_t *segs,
    int *segp)
{
 bus_size_t sgsize, max_sgsize;
 vm_paddr_t curaddr;
 vm_offset_t kvaddr, vaddr;
 int error;

 if (map == ((void*)0))
  map = &nobounce_dmamap;

 if (segs == ((void*)0))
  segs = dmat->segments;

 if ((dmat->bounce_flags & BUS_DMA_COULD_BOUNCE) != 0) {
  _bus_dmamap_count_pages(dmat, map, pmap, buf, buflen, flags);
  if (map->pagesneeded != 0) {
   error = _bus_dmamap_reserve_pages(dmat, map, flags);
   if (error)
    return (error);
  }
 }

 vaddr = (vm_offset_t)buf;
 while (buflen > 0) {



  if (pmap == kernel_pmap) {
   curaddr = pmap_kextract(vaddr);
   kvaddr = vaddr;
  } else {
   curaddr = pmap_extract(pmap, vaddr);
   kvaddr = 0;
  }




  max_sgsize = MIN(buflen, dmat->common.maxsegsz);
  sgsize = PAGE_SIZE - (curaddr & PAGE_MASK);
  if ((dmat->bounce_flags & BUS_DMA_COULD_BOUNCE) != 0 &&
      map->pagesneeded != 0 &&
      bus_dma_run_filter(&dmat->common, curaddr)) {
   sgsize = roundup2(sgsize, dmat->common.alignment);
   sgsize = MIN(sgsize, max_sgsize);
   curaddr = add_bounce_page(dmat, map, kvaddr, curaddr, 0,
       sgsize);
  } else {
   sgsize = MIN(sgsize, max_sgsize);
  }
  sgsize = _bus_dmamap_addseg(dmat, map, curaddr, sgsize, segs,
      segp);
  if (sgsize == 0)
   break;
  vaddr += sgsize;
  buflen -= sgsize;
 }




 return (buflen != 0 ? EFBIG : 0);
}
