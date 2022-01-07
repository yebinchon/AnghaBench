
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct glxsb_softc {int sc_dmat; } ;
struct glxsb_dma_map {int dma_map; int dma_vaddr; } ;


 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int ,int ) ;

__attribute__((used)) static void
glxsb_dma_free(struct glxsb_softc *sc, struct glxsb_dma_map *dma)
{

 bus_dmamap_unload(sc->sc_dmat, dma->dma_map);
 bus_dmamem_free(sc->sc_dmat, dma->dma_vaddr, dma->dma_map);
 bus_dma_tag_destroy(sc->sc_dmat);
}
