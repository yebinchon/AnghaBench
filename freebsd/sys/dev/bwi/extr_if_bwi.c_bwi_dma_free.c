
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_ring_data {int rdata_dmap; int * rdata_desc; } ;
struct bwi_softc {int * sc_parent_dtag; int * sc_rxring_dtag; struct bwi_ring_data sc_rx_rdata; int * sc_txring_dtag; struct bwi_ring_data* sc_tx_rdata; } ;


 int BWI_TX_NRING ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;
 int bwi_dma_mbuf_destroy (struct bwi_softc*,int,int) ;
 int bwi_dma_txstats_free (struct bwi_softc*) ;

__attribute__((used)) static void
bwi_dma_free(struct bwi_softc *sc)
{
 if (sc->sc_txring_dtag != ((void*)0)) {
  int i;

  for (i = 0; i < BWI_TX_NRING; ++i) {
   struct bwi_ring_data *rd = &sc->sc_tx_rdata[i];

   if (rd->rdata_desc != ((void*)0)) {
    bus_dmamap_unload(sc->sc_txring_dtag,
        rd->rdata_dmap);
    bus_dmamem_free(sc->sc_txring_dtag,
      rd->rdata_desc,
      rd->rdata_dmap);
   }
  }
  bus_dma_tag_destroy(sc->sc_txring_dtag);
 }

 if (sc->sc_rxring_dtag != ((void*)0)) {
  struct bwi_ring_data *rd = &sc->sc_rx_rdata;

  if (rd->rdata_desc != ((void*)0)) {
   bus_dmamap_unload(sc->sc_rxring_dtag, rd->rdata_dmap);
   bus_dmamem_free(sc->sc_rxring_dtag, rd->rdata_desc,
     rd->rdata_dmap);
  }
  bus_dma_tag_destroy(sc->sc_rxring_dtag);
 }

 bwi_dma_txstats_free(sc);
 bwi_dma_mbuf_destroy(sc, BWI_TX_NRING, 1);

 if (sc->sc_parent_dtag != ((void*)0))
  bus_dma_tag_destroy(sc->sc_parent_dtag);
}
