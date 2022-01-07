
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvscsi_softc {int dummy; } ;
struct pvscsi_dma {scalar_t__ paddr; int * tag; int map; int * vaddr; } ;


 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;
 int bzero (struct pvscsi_dma*,int) ;

__attribute__((used)) static void
pvscsi_dma_free(struct pvscsi_softc *sc, struct pvscsi_dma *dma)
{

 if (dma->tag != ((void*)0)) {
  if (dma->paddr != 0) {
   bus_dmamap_unload(dma->tag, dma->map);
  }

  if (dma->vaddr != ((void*)0)) {
   bus_dmamem_free(dma->tag, dma->vaddr, dma->map);
  }

  bus_dma_tag_destroy(dma->tag);
 }

 bzero(dma, sizeof(*dma));
}
