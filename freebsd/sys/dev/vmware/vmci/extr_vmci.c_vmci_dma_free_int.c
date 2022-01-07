
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_softc {int dummy; } ;
struct vmci_dma_alloc {scalar_t__ dma_paddr; int * dma_tag; int dma_map; int * dma_vaddr; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_sync (int *,int ,int) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;
 int bzero (struct vmci_dma_alloc*,int) ;

__attribute__((used)) static void
vmci_dma_free_int(struct vmci_softc *sc, struct vmci_dma_alloc *dma)
{

 if (dma->dma_tag != ((void*)0)) {
  if (dma->dma_paddr != 0) {
   bus_dmamap_sync(dma->dma_tag, dma->dma_map,
       BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(dma->dma_tag, dma->dma_map);
  }

  if (dma->dma_vaddr != ((void*)0))
   bus_dmamem_free(dma->dma_tag, dma->dma_vaddr,
       dma->dma_map);

  bus_dma_tag_destroy(dma->dma_tag);
 }
 bzero(dma, sizeof(struct vmci_dma_alloc));
}
