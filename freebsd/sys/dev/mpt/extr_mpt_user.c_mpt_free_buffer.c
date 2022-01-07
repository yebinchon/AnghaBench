
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_page_memory {int * vaddr; int tag; int map; } ;


 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int *,int ) ;

__attribute__((used)) static void
mpt_free_buffer(struct mpt_page_memory *page_mem)
{

 if (page_mem->vaddr == ((void*)0))
  return;
 bus_dmamap_unload(page_mem->tag, page_mem->map);
 bus_dmamem_free(page_mem->tag, page_mem->vaddr, page_mem->map);
 bus_dma_tag_destroy(page_mem->tag);
 page_mem->vaddr = ((void*)0);
}
