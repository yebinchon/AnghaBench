
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ vm_paddr_t ;
struct vm_page {int dummy; } ;
typedef int bus_size_t ;
typedef TYPE_1__* bus_dmamap_t ;
typedef TYPE_2__* bus_dma_tag_t ;
struct TYPE_11__ {int alignment; int maxsegsz; int boundary; int lowaddr; } ;
struct TYPE_10__ {TYPE_4__ common; } ;
struct TYPE_9__ {scalar_t__ pagesneeded; } ;


 int CTR1 (int ,char*,scalar_t__) ;
 int CTR3 (int ,char*,TYPE_1__*,TYPE_1__*,scalar_t__) ;
 int CTR4 (int ,char*,int ,int ,int ,int) ;
 int KASSERT (int,char*) ;
 int KTR_BUSDMA ;
 int MIN (int,int) ;
 scalar_t__ Maxmem ;
 int PAGE_MASK ;
 int PAGE_SIZE ;
 scalar_t__ VM_PAGE_TO_PHYS (struct vm_page*) ;
 scalar_t__ bus_dma_run_filter (TYPE_4__*,scalar_t__) ;
 TYPE_1__ nobounce_dmamap ;
 int ptoa (scalar_t__) ;
 int roundup2 (int,int) ;

__attribute__((used)) static void
_bus_dmamap_count_ma(bus_dma_tag_t dmat, bus_dmamap_t map, struct vm_page **ma,
    int ma_offs, bus_size_t buflen, int flags)
{
 bus_size_t sg_len, max_sgsize;
 int page_index;
 vm_paddr_t paddr;

 if (map != &nobounce_dmamap && map->pagesneeded == 0) {
  CTR4(KTR_BUSDMA, "lowaddr= %d Maxmem= %d, boundary= %d, "
      "alignment= %d", dmat->common.lowaddr,
      ptoa((vm_paddr_t)Maxmem),
      dmat->common.boundary, dmat->common.alignment);
  CTR3(KTR_BUSDMA, "map= %p, nobouncemap= %p, pagesneeded= %d",
      map, &nobounce_dmamap, map->pagesneeded);





  page_index = 0;
  while (buflen > 0) {
   paddr = VM_PAGE_TO_PHYS(ma[page_index]) + ma_offs;
   sg_len = PAGE_SIZE - ma_offs;
   max_sgsize = MIN(buflen, dmat->common.maxsegsz);
   sg_len = MIN(sg_len, max_sgsize);
   if (bus_dma_run_filter(&dmat->common, paddr) != 0) {
    sg_len = roundup2(sg_len,
        dmat->common.alignment);
    sg_len = MIN(sg_len, max_sgsize);
    KASSERT((sg_len & (dmat->common.alignment - 1))
        == 0, ("Segment size is not aligned"));
    map->pagesneeded++;
   }
   if (((ma_offs + sg_len) & ~PAGE_MASK) != 0)
    page_index++;
   ma_offs = (ma_offs + sg_len) & PAGE_MASK;
   KASSERT(buflen >= sg_len,
       ("Segment length overruns original buffer"));
   buflen -= sg_len;
  }
  CTR1(KTR_BUSDMA, "pagesneeded= %d\n", map->pagesneeded);
 }
}
