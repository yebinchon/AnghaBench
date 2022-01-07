
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lsi64854_softc {int sc_buffer_dmat; int sc_dmamap; int * setup; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int L64854_GCSR (struct lsi64854_softc*) ;
 int L64854_WRITE ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;

int
lsi64854_detach(struct lsi64854_softc *sc)
{

 if (sc->setup != ((void*)0)) {
  bus_dmamap_sync(sc->sc_buffer_dmat, sc->sc_dmamap,
      (L64854_GCSR(sc) & L64854_WRITE) != 0 ?
      BUS_DMASYNC_PREREAD : BUS_DMASYNC_PREWRITE);
  bus_dmamap_unload(sc->sc_buffer_dmat, sc->sc_dmamap);
  bus_dmamap_destroy(sc->sc_buffer_dmat, sc->sc_dmamap);
  bus_dma_tag_destroy(sc->sc_buffer_dmat);
 }

 return (0);
}
