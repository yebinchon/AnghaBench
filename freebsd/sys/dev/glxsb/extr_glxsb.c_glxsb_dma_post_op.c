
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct glxsb_softc {int sc_dmat; } ;
struct glxsb_dma_map {int dma_map; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int bus_dmamap_sync (int ,int ,int) ;

__attribute__((used)) static void
glxsb_dma_post_op(struct glxsb_softc *sc, struct glxsb_dma_map *dma)
{

 bus_dmamap_sync(sc->sc_dmat, dma->dma_map,
     BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
}
