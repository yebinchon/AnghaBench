
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
struct vm_page {int dummy; } ;
typedef scalar_t__ bus_size_t ;
typedef int bus_dmamap_t ;
typedef int bus_dma_tag_t ;
typedef int bus_dma_segment_t ;


 scalar_t__ PAGE_SIZE ;
 scalar_t__ VM_PAGE_TO_PHYS (struct vm_page*) ;
 int _bus_dmamap_load_phys (int ,int ,scalar_t__,scalar_t__,int,int *,int*) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

int
bus_dmamap_load_ma_triv(bus_dma_tag_t dmat, bus_dmamap_t map,
    struct vm_page **ma, bus_size_t tlen, int ma_offs, int flags,
    bus_dma_segment_t *segs, int *segp)
{
 vm_paddr_t paddr;
 bus_size_t len;
 int error, i;

 error = 0;
 for (i = 0; tlen > 0; i++, tlen -= len) {
  len = min(PAGE_SIZE - ma_offs, tlen);
  paddr = VM_PAGE_TO_PHYS(ma[i]) + ma_offs;
  error = _bus_dmamap_load_phys(dmat, map, paddr, len,
      flags, segs, segp);
  if (error != 0)
   break;
  ma_offs = 0;
 }
 return (error);
}
