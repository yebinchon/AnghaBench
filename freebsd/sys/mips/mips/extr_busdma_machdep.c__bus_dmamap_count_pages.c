
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ pmap_t ;
typedef scalar_t__ bus_size_t ;
typedef TYPE_1__* bus_dmamap_t ;
typedef TYPE_2__* bus_dma_tag_t ;
typedef int bus_addr_t ;
struct TYPE_8__ {int flags; int alignment; int boundary; int lowaddr; } ;
struct TYPE_7__ {scalar_t__ pagesneeded; } ;


 int BUS_DMA_COULD_BOUNCE ;
 int CTR1 (int ,char*,scalar_t__) ;
 int CTR2 (int ,char*,TYPE_1__*,scalar_t__) ;
 int CTR3 (int ,char*,int ,int ,int ) ;
 int KASSERT (int,char*) ;
 int KTR_BUSDMA ;
 scalar_t__ PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ kernel_pmap ;
 int pmap_kextract (scalar_t__) ;
 scalar_t__ roundup2 (scalar_t__,int ) ;
 scalar_t__ run_filter (TYPE_2__*,int ) ;

__attribute__((used)) static void
_bus_dmamap_count_pages(bus_dma_tag_t dmat, bus_dmamap_t map, pmap_t pmap,
    void *buf, bus_size_t buflen, int flags)
{
 vm_offset_t vaddr;
 vm_offset_t vendaddr;
 bus_addr_t paddr;

 if (map->pagesneeded == 0) {
  CTR3(KTR_BUSDMA, "lowaddr= %d, boundary= %d, alignment= %d",
      dmat->lowaddr, dmat->boundary, dmat->alignment);
  CTR2(KTR_BUSDMA, "map= %p, pagesneeded= %d",
      map, map->pagesneeded);




  vaddr = (vm_offset_t)buf;
  vendaddr = (vm_offset_t)buf + buflen;

  while (vaddr < vendaddr) {
   bus_size_t sg_len;

   KASSERT(kernel_pmap == pmap, ("pmap is not kernel pmap"));
   sg_len = PAGE_SIZE - ((vm_offset_t)vaddr & PAGE_MASK);
   paddr = pmap_kextract(vaddr);
   if (((dmat->flags & BUS_DMA_COULD_BOUNCE) != 0) &&
       run_filter(dmat, paddr) != 0) {
    sg_len = roundup2(sg_len, dmat->alignment);
    map->pagesneeded++;
   }
   vaddr += sg_len;
  }
  CTR1(KTR_BUSDMA, "pagesneeded= %d\n", map->pagesneeded);
 }
}
