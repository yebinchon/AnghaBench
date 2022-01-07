
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_dma_info {int * map; int * tag; int * vaddr; int paddr; int size; } ;
typedef int bus_size_t ;
typedef int bus_dma_tag_t ;


 int BUS_DMASYNC_PREWRITE ;
 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int **) ;
 int bus_dmamap_load (int *,int *,int *,int ,int ,int *,int) ;
 int bus_dmamap_sync (int *,int *,int ) ;
 int bus_dmamem_alloc (int *,void**,int,int **) ;
 int bus_dmamem_free (int *,int *,int *) ;
 int iwm_dma_contig_free (struct iwm_dma_info*) ;
 int iwm_dma_map_addr ;

int
iwm_dma_contig_alloc(bus_dma_tag_t tag, struct iwm_dma_info *dma,
    bus_size_t size, bus_size_t alignment)
{
 int error;

 dma->tag = ((void*)0);
 dma->map = ((void*)0);
 dma->size = size;
 dma->vaddr = ((void*)0);

 error = bus_dma_tag_create(tag, alignment,
            0, BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), size,
            1, size, 0, ((void*)0), ((void*)0), &dma->tag);
        if (error != 0)
                goto fail;

        error = bus_dmamem_alloc(dma->tag, (void **)&dma->vaddr,
            BUS_DMA_NOWAIT | BUS_DMA_ZERO | BUS_DMA_COHERENT, &dma->map);
        if (error != 0)
                goto fail;

        error = bus_dmamap_load(dma->tag, dma->map, dma->vaddr, size,
            iwm_dma_map_addr, &dma->paddr, BUS_DMA_NOWAIT);
        if (error != 0) {
  bus_dmamem_free(dma->tag, dma->vaddr, dma->map);
  dma->vaddr = ((void*)0);
  goto fail;
 }

 bus_dmamap_sync(dma->tag, dma->map, BUS_DMASYNC_PREWRITE);

 return 0;

fail:
 iwm_dma_contig_free(dma);

 return error;
}
