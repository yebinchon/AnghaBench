
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef int u_long ;
struct sync_list {scalar_t__ vaddr; scalar_t__ datacount; scalar_t__ busaddr; } ;
struct pmap {int dummy; } ;
typedef scalar_t__ bus_size_t ;
typedef TYPE_1__* bus_dmamap_t ;
typedef TYPE_2__* bus_dma_tag_t ;
typedef int bus_dma_segment_t ;
typedef scalar_t__ bus_addr_t ;
struct TYPE_17__ {int flags; scalar_t__ maxsegsz; int nsegments; int alignment; int boundary; int lowaddr; int * segments; } ;
struct TYPE_16__ {scalar_t__ pagesneeded; int sync_count; struct sync_list* slist; int flags; } ;


 int BUS_DMA_COULD_BOUNCE ;
 int BUS_DMA_LOAD_MBUF ;
 int CTR3 (int ,char*,int ,int ,int ) ;
 int DMAMAP_CACHE_ALIGNED ;
 int EFBIG ;
 int KASSERT (int,char*) ;
 int KTR_BUSDMA ;
 int PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ _bus_dmamap_addseg (TYPE_2__*,TYPE_1__*,scalar_t__,scalar_t__,int *,int*) ;
 int _bus_dmamap_count_pages (TYPE_2__*,TYPE_1__*,struct pmap*,void*,scalar_t__,int) ;
 int _bus_dmamap_reserve_pages (TYPE_2__*,TYPE_1__*,int) ;
 scalar_t__ add_bounce_page (TYPE_2__*,TYPE_1__*,scalar_t__,scalar_t__,scalar_t__) ;
 int bus_dmamap_unload (TYPE_2__*,TYPE_1__*) ;
 struct pmap* kernel_pmap ;
 scalar_t__ pmap_kextract (scalar_t__) ;
 scalar_t__ run_filter (TYPE_2__*,scalar_t__) ;

int
_bus_dmamap_load_buffer(bus_dma_tag_t dmat, bus_dmamap_t map, void *buf,
    bus_size_t buflen, struct pmap *pmap, int flags, bus_dma_segment_t *segs,
    int *segp)
{
 bus_size_t sgsize;
 bus_addr_t curaddr;
 struct sync_list *sl;
 vm_offset_t vaddr = (vm_offset_t)buf;
 int error = 0;


 if (segs == ((void*)0))
  segs = dmat->segments;
 if ((flags & BUS_DMA_LOAD_MBUF) != 0)
  map->flags |= DMAMAP_CACHE_ALIGNED;

 if ((dmat->flags & BUS_DMA_COULD_BOUNCE) != 0) {
  _bus_dmamap_count_pages(dmat, map, pmap, buf, buflen, flags);
  if (map->pagesneeded != 0) {
   error = _bus_dmamap_reserve_pages(dmat, map, flags);
   if (error)
    return (error);
  }
 }
 CTR3(KTR_BUSDMA, "lowaddr= %d boundary= %d, "
     "alignment= %d", dmat->lowaddr, dmat->boundary, dmat->alignment);

 while (buflen > 0) {






  KASSERT(kernel_pmap == pmap, ("pmap is not kernel pmap"));
  curaddr = pmap_kextract(vaddr);




  sgsize = PAGE_SIZE - ((u_long)curaddr & PAGE_MASK);
  if (sgsize > dmat->maxsegsz)
   sgsize = dmat->maxsegsz;
  if (buflen < sgsize)
   sgsize = buflen;

  if (((dmat->flags & BUS_DMA_COULD_BOUNCE) != 0) &&
      map->pagesneeded != 0 && run_filter(dmat, curaddr)) {
   curaddr = add_bounce_page(dmat, map, vaddr, curaddr,
       sgsize);
  } else {
   sl = &map->slist[map->sync_count - 1];
   if (map->sync_count == 0 ||
       vaddr != sl->vaddr + sl->datacount) {
    if (++map->sync_count > dmat->nsegments)
     goto cleanup;
    sl++;
    sl->vaddr = vaddr;
    sl->datacount = sgsize;
    sl->busaddr = curaddr;
   } else
    sl->datacount += sgsize;
  }
  sgsize = _bus_dmamap_addseg(dmat, map, curaddr, sgsize, segs,
      segp);
  if (sgsize == 0)
   break;
  vaddr += sgsize;
  buflen -= sgsize;
 }

cleanup:



 if (buflen != 0) {
  bus_dmamap_unload(dmat, map);
  error = EFBIG;
 }
 return (error);
}
