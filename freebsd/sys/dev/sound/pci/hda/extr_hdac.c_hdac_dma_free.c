
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_softc {int dummy; } ;
struct hdac_dma {scalar_t__ dma_paddr; scalar_t__ dma_size; int * dma_tag; int * dma_vaddr; int dma_map; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_sync (int *,int ,int) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;

__attribute__((used)) static void
hdac_dma_free(struct hdac_softc *sc, struct hdac_dma *dma)
{
 if (dma->dma_paddr != 0) {

  bus_dmamap_sync(dma->dma_tag, dma->dma_map,
      BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(dma->dma_tag, dma->dma_map);
  dma->dma_paddr = 0;
 }
 if (dma->dma_vaddr != ((void*)0)) {
  bus_dmamem_free(dma->dma_tag, dma->dma_vaddr, dma->dma_map);
  dma->dma_vaddr = ((void*)0);
 }
 if (dma->dma_tag != ((void*)0)) {
  bus_dma_tag_destroy(dma->dma_tag);
  dma->dma_tag = ((void*)0);
 }
 dma->dma_size = 0;
}
