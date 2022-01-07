
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bus_size_t ;
typedef int bus_dmamap_t ;
typedef int bus_dma_tag_t ;


 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,void*,int ) ;

void
fwdma_free_size(bus_dma_tag_t dmat, bus_dmamap_t dmamap,
  void *vaddr, bus_size_t size)
{
 bus_dmamap_unload(dmat, dmamap);
 bus_dmamem_free(dmat, vaddr, dmamap);
}
