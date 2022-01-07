
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_dma_info {int * tag; int * vaddr; int map; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_sync (int *,int ,int) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;

void
iwm_dma_contig_free(struct iwm_dma_info *dma)
{
 if (dma->vaddr != ((void*)0)) {
  bus_dmamap_sync(dma->tag, dma->map,
      BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(dma->tag, dma->map);
  bus_dmamem_free(dma->tag, dma->vaddr, dma->map);
  dma->vaddr = ((void*)0);
 }
 if (dma->tag != ((void*)0)) {
  bus_dma_tag_destroy(dma->tag);
  dma->tag = ((void*)0);
 }
}
