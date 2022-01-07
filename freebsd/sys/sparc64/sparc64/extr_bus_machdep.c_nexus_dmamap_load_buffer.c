
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int u_long ;
typedef scalar_t__ pmap_t ;
typedef scalar_t__ bus_size_t ;
typedef int bus_dmamap_t ;
typedef TYPE_1__* bus_dma_tag_t ;
typedef int bus_dma_segment_t ;
typedef scalar_t__ bus_addr_t ;
struct TYPE_4__ {scalar_t__ dt_maxsegsz; int * dt_segments; } ;


 int EFBIG ;
 int PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ kernel_pmap ;
 scalar_t__ nexus_dmamap_addseg (TYPE_1__*,int ,scalar_t__,scalar_t__,int *,int*) ;
 scalar_t__ pmap_extract (scalar_t__,int ) ;
 scalar_t__ pmap_kextract (int ) ;

__attribute__((used)) static int
nexus_dmamap_load_buffer(bus_dma_tag_t dmat, bus_dmamap_t map, void *buf,
    bus_size_t buflen, pmap_t pmap, int flags, bus_dma_segment_t *segs,
    int *segp)
{
 bus_size_t sgsize;
 bus_addr_t curaddr;
 vm_offset_t vaddr = (vm_offset_t)buf;

 if (segs == ((void*)0))
  segs = dmat->dt_segments;

 while (buflen > 0) {



  if (pmap == kernel_pmap)
   curaddr = pmap_kextract(vaddr);
  else
   curaddr = pmap_extract(pmap, vaddr);




  sgsize = PAGE_SIZE - ((u_long)curaddr & PAGE_MASK);
  if (sgsize > dmat->dt_maxsegsz)
   sgsize = dmat->dt_maxsegsz;
  if (buflen < sgsize)
   sgsize = buflen;

  sgsize = nexus_dmamap_addseg(dmat, map, curaddr, sgsize, segs,
      segp);
  if (sgsize == 0)
   break;

  vaddr += sgsize;
  buflen -= sgsize;
 }




 return (buflen != 0 ? EFBIG : 0);
}
