
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_dma_mem {int dma_map; int dma_tag; int * dma_vaddr; } ;
typedef int bus_dmasync_op_t ;


 int bus_dmamap_sync (int ,int ,int ) ;

__attribute__((used)) static inline void
sec_sync_dma_mem(struct sec_dma_mem *dma_mem, bus_dmasync_op_t op)
{


 if (dma_mem->dma_vaddr != ((void*)0))
  bus_dmamap_sync(dma_mem->dma_tag, dma_mem->dma_map, op);
}
