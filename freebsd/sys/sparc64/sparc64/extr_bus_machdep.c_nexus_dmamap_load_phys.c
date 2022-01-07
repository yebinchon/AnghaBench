
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef scalar_t__ bus_size_t ;
typedef int bus_dmamap_t ;
typedef TYPE_1__* bus_dma_tag_t ;
typedef int bus_dma_segment_t ;
typedef int bus_addr_t ;
struct TYPE_4__ {int dt_maxsegsz; int * dt_segments; } ;


 int EFBIG ;
 scalar_t__ MIN (scalar_t__,int ) ;
 scalar_t__ nexus_dmamap_addseg (TYPE_1__*,int ,int ,scalar_t__,int *,int*) ;

__attribute__((used)) static int
nexus_dmamap_load_phys(bus_dma_tag_t dmat, bus_dmamap_t map, vm_paddr_t buf,
    bus_size_t buflen, int flags, bus_dma_segment_t *segs, int *segp)
{
 bus_addr_t curaddr;
 bus_size_t sgsize;

 if (segs == ((void*)0))
  segs = dmat->dt_segments;

 curaddr = buf;
 while (buflen > 0) {
  sgsize = MIN(buflen, dmat->dt_maxsegsz);
  sgsize = nexus_dmamap_addseg(dmat, map, curaddr, sgsize, segs,
      segp);
  if (sgsize == 0)
   break;
  curaddr += sgsize;
  buflen -= sgsize;
 }




 return (buflen != 0 ? EFBIG : 0);
}
