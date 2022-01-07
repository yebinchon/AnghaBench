
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct an_softc {int an_dtag; } ;
struct an_dma_alloc {scalar_t__ an_dma_vaddr; int an_dma_map; } ;


 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,scalar_t__,int ) ;

__attribute__((used)) static void
an_dma_free(struct an_softc *sc, struct an_dma_alloc *dma)
{
 bus_dmamap_unload(sc->an_dtag, dma->an_dma_map);
 bus_dmamem_free(sc->an_dtag, dma->an_dma_vaddr, dma->an_dma_map);
 dma->an_dma_vaddr = 0;
}
