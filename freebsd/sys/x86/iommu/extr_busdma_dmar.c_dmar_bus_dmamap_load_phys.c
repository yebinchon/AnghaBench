
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ***** vm_page_t ;
typedef scalar_t__ vm_paddr_t ;
struct vm_page {int dummy; } ;
struct bus_dmamap_dmar {scalar_t__ cansleep; } ;
struct bus_dma_tag_dmar {int dummy; } ;
typedef int bus_size_t ;
typedef scalar_t__ bus_dmamap_t ;
typedef scalar_t__ bus_dma_tag_t ;
typedef int bus_dma_segment_t ;


 int ENOMEM ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_WAITOK ;
 int M_ZERO ;
 int OFF_TO_IDX (scalar_t__) ;
 scalar_t__ PAGE_MASK ;
 int ******* PHYS_TO_VM_PAGE (scalar_t__) ;
 int VM_MEMATTR_DEFAULT ;
 scalar_t__ VM_PAGE_TO_PHYS (int *****) ;
 int dmar_bus_dmamap_load_something (struct bus_dma_tag_dmar*,struct bus_dmamap_dmar*,int ******,int,int ,int,int *,int*) ;
 int free (int ******,int ) ;
 void* malloc (int,int ,int) ;
 scalar_t__ ptoa (int) ;
 scalar_t__ round_page (int ) ;
 scalar_t__ trunc_page (scalar_t__) ;
 int vm_page_initfake (int *****,scalar_t__,int ) ;

__attribute__((used)) static int
dmar_bus_dmamap_load_phys(bus_dma_tag_t dmat, bus_dmamap_t map1,
    vm_paddr_t buf, bus_size_t buflen, int flags, bus_dma_segment_t *segs,
    int *segp)
{
 struct bus_dma_tag_dmar *tag;
 struct bus_dmamap_dmar *map;
 vm_page_t *ma, fma;
 vm_paddr_t pstart, pend, paddr;
 int error, i, ma_cnt, mflags, offset;

 tag = (struct bus_dma_tag_dmar *)dmat;
 map = (struct bus_dmamap_dmar *)map1;
 pstart = trunc_page(buf);
 pend = round_page(buf + buflen);
 offset = buf & PAGE_MASK;
 ma_cnt = OFF_TO_IDX(pend - pstart);
 mflags = map->cansleep ? M_WAITOK : M_NOWAIT;
 ma = malloc(sizeof(vm_page_t) * ma_cnt, M_DEVBUF, mflags);
 if (ma == ((void*)0))
  return (ENOMEM);
 fma = ((void*)0);
 for (i = 0; i < ma_cnt; i++) {
  paddr = pstart + ptoa(i);
  ma[i] = PHYS_TO_VM_PAGE(paddr);
  if (ma[i] == ((void*)0) || VM_PAGE_TO_PHYS(ma[i]) != paddr) {





   if (fma == ((void*)0)) {
    fma = malloc(sizeof(struct vm_page) * ma_cnt,
        M_DEVBUF, M_ZERO | mflags);
    if (fma == ((void*)0)) {
     free(ma, M_DEVBUF);
     return (ENOMEM);
    }
   }
   vm_page_initfake(&fma[i], pstart + ptoa(i),
       VM_MEMATTR_DEFAULT);
   ma[i] = &fma[i];
  }
 }
 error = dmar_bus_dmamap_load_something(tag, map, ma, offset, buflen,
     flags, segs, segp);
 free(fma, M_DEVBUF);
 free(ma, M_DEVBUF);
 return (error);
}
