
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stge_txdesc {scalar_t__ tx_dmamap; } ;
struct TYPE_4__ {int * stge_parent_tag; int * stge_rx_tag; scalar_t__ stge_rx_sparemap; struct stge_rxdesc* stge_rxdesc; int * stge_tx_tag; struct stge_txdesc* stge_txdesc; int * stge_rx_ring_tag; int stge_rx_ring_map; int * stge_tx_ring_tag; int stge_tx_ring_map; } ;
struct TYPE_3__ {scalar_t__ stge_rx_ring_paddr; int * stge_rx_ring; scalar_t__ stge_tx_ring_paddr; int * stge_tx_ring; } ;
struct stge_softc {TYPE_2__ sc_cdata; TYPE_1__ sc_rdata; } ;
struct stge_rxdesc {scalar_t__ rx_dmamap; } ;


 int STGE_RX_RING_CNT ;
 int STGE_TX_RING_CNT ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,scalar_t__) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;

__attribute__((used)) static void
stge_dma_free(struct stge_softc *sc)
{
 struct stge_txdesc *txd;
 struct stge_rxdesc *rxd;
 int i;


 if (sc->sc_cdata.stge_tx_ring_tag) {
  if (sc->sc_rdata.stge_tx_ring_paddr)
   bus_dmamap_unload(sc->sc_cdata.stge_tx_ring_tag,
       sc->sc_cdata.stge_tx_ring_map);
  if (sc->sc_rdata.stge_tx_ring)
   bus_dmamem_free(sc->sc_cdata.stge_tx_ring_tag,
       sc->sc_rdata.stge_tx_ring,
       sc->sc_cdata.stge_tx_ring_map);
  sc->sc_rdata.stge_tx_ring = ((void*)0);
  sc->sc_rdata.stge_tx_ring_paddr = 0;
  bus_dma_tag_destroy(sc->sc_cdata.stge_tx_ring_tag);
  sc->sc_cdata.stge_tx_ring_tag = ((void*)0);
 }

 if (sc->sc_cdata.stge_rx_ring_tag) {
  if (sc->sc_rdata.stge_rx_ring_paddr)
   bus_dmamap_unload(sc->sc_cdata.stge_rx_ring_tag,
       sc->sc_cdata.stge_rx_ring_map);
  if (sc->sc_rdata.stge_rx_ring)
   bus_dmamem_free(sc->sc_cdata.stge_rx_ring_tag,
       sc->sc_rdata.stge_rx_ring,
       sc->sc_cdata.stge_rx_ring_map);
  sc->sc_rdata.stge_rx_ring = ((void*)0);
  sc->sc_rdata.stge_rx_ring_paddr = 0;
  bus_dma_tag_destroy(sc->sc_cdata.stge_rx_ring_tag);
  sc->sc_cdata.stge_rx_ring_tag = ((void*)0);
 }

 if (sc->sc_cdata.stge_tx_tag) {
  for (i = 0; i < STGE_TX_RING_CNT; i++) {
   txd = &sc->sc_cdata.stge_txdesc[i];
   if (txd->tx_dmamap) {
    bus_dmamap_destroy(sc->sc_cdata.stge_tx_tag,
        txd->tx_dmamap);
    txd->tx_dmamap = 0;
   }
  }
  bus_dma_tag_destroy(sc->sc_cdata.stge_tx_tag);
  sc->sc_cdata.stge_tx_tag = ((void*)0);
 }

 if (sc->sc_cdata.stge_rx_tag) {
  for (i = 0; i < STGE_RX_RING_CNT; i++) {
   rxd = &sc->sc_cdata.stge_rxdesc[i];
   if (rxd->rx_dmamap) {
    bus_dmamap_destroy(sc->sc_cdata.stge_rx_tag,
        rxd->rx_dmamap);
    rxd->rx_dmamap = 0;
   }
  }
  if (sc->sc_cdata.stge_rx_sparemap) {
   bus_dmamap_destroy(sc->sc_cdata.stge_rx_tag,
       sc->sc_cdata.stge_rx_sparemap);
   sc->sc_cdata.stge_rx_sparemap = 0;
  }
  bus_dma_tag_destroy(sc->sc_cdata.stge_rx_tag);
  sc->sc_cdata.stge_rx_tag = ((void*)0);
 }

 if (sc->sc_cdata.stge_parent_tag) {
  bus_dma_tag_destroy(sc->sc_cdata.stge_parent_tag);
  sc->sc_cdata.stge_parent_tag = ((void*)0);
 }
}
