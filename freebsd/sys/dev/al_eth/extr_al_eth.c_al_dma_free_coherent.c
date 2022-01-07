
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bus_dmamap_t ;
typedef int bus_dma_tag_t ;


 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,void*,int ) ;

__attribute__((used)) static void
al_dma_free_coherent(bus_dma_tag_t tag, bus_dmamap_t map, void *vaddr)
{

 bus_dmamap_unload(tag, map);
 bus_dmamem_free(tag, vaddr, map);
 bus_dma_tag_destroy(tag);
}
