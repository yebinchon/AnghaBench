
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_dma_mem {int * dma_vaddr; int dma_tag; int dma_map; scalar_t__ dma_is_map; } ;


 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int *,int ) ;

__attribute__((used)) static void
sec_free_dma_mem(struct sec_dma_mem *dma_mem)
{


 if (dma_mem->dma_vaddr == ((void*)0))
  return;

 bus_dmamap_unload(dma_mem->dma_tag, dma_mem->dma_map);

 if (dma_mem->dma_is_map)
  bus_dmamap_destroy(dma_mem->dma_tag, dma_mem->dma_map);
 else
  bus_dmamem_free(dma_mem->dma_tag, dma_mem->dma_vaddr,
      dma_mem->dma_map);

 bus_dma_tag_destroy(dma_mem->dma_tag);
 dma_mem->dma_vaddr = ((void*)0);
}
