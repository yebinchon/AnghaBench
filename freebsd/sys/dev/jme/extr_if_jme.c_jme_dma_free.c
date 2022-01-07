
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct jme_txdesc {int * tx_dmamap; } ;
struct TYPE_4__ {int * jme_ring_tag; int * jme_buffer_tag; int * jme_ssb_tag; int jme_ssb_map; int * jme_rx_tag; int * jme_rx_sparemap; struct jme_rxdesc* jme_rxdesc; int * jme_tx_tag; struct jme_txdesc* jme_txdesc; int * jme_rx_ring_tag; int jme_rx_ring_map; int * jme_tx_ring_tag; int jme_tx_ring_map; } ;
struct TYPE_3__ {scalar_t__ jme_ssb_block_paddr; int * jme_ssb_block; scalar_t__ jme_rx_ring_paddr; int * jme_rx_ring; scalar_t__ jme_tx_ring_paddr; int * jme_tx_ring; } ;
struct jme_softc {TYPE_2__ jme_cdata; TYPE_1__ jme_rdata; } ;
struct jme_rxdesc {int * rx_dmamap; } ;


 int JME_RX_RING_CNT ;
 int JME_TX_RING_CNT ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;

__attribute__((used)) static void
jme_dma_free(struct jme_softc *sc)
{
 struct jme_txdesc *txd;
 struct jme_rxdesc *rxd;
 int i;


 if (sc->jme_cdata.jme_tx_ring_tag != ((void*)0)) {
  if (sc->jme_rdata.jme_tx_ring_paddr)
   bus_dmamap_unload(sc->jme_cdata.jme_tx_ring_tag,
       sc->jme_cdata.jme_tx_ring_map);
  if (sc->jme_rdata.jme_tx_ring)
   bus_dmamem_free(sc->jme_cdata.jme_tx_ring_tag,
       sc->jme_rdata.jme_tx_ring,
       sc->jme_cdata.jme_tx_ring_map);
  sc->jme_rdata.jme_tx_ring = ((void*)0);
  sc->jme_rdata.jme_tx_ring_paddr = 0;
  bus_dma_tag_destroy(sc->jme_cdata.jme_tx_ring_tag);
  sc->jme_cdata.jme_tx_ring_tag = ((void*)0);
 }

 if (sc->jme_cdata.jme_rx_ring_tag != ((void*)0)) {
  if (sc->jme_rdata.jme_rx_ring_paddr)
   bus_dmamap_unload(sc->jme_cdata.jme_rx_ring_tag,
       sc->jme_cdata.jme_rx_ring_map);
  if (sc->jme_rdata.jme_rx_ring)
   bus_dmamem_free(sc->jme_cdata.jme_rx_ring_tag,
       sc->jme_rdata.jme_rx_ring,
       sc->jme_cdata.jme_rx_ring_map);
  sc->jme_rdata.jme_rx_ring = ((void*)0);
  sc->jme_rdata.jme_rx_ring_paddr = 0;
  bus_dma_tag_destroy(sc->jme_cdata.jme_rx_ring_tag);
  sc->jme_cdata.jme_rx_ring_tag = ((void*)0);
 }

 if (sc->jme_cdata.jme_tx_tag != ((void*)0)) {
  for (i = 0; i < JME_TX_RING_CNT; i++) {
   txd = &sc->jme_cdata.jme_txdesc[i];
   if (txd->tx_dmamap != ((void*)0)) {
    bus_dmamap_destroy(sc->jme_cdata.jme_tx_tag,
        txd->tx_dmamap);
    txd->tx_dmamap = ((void*)0);
   }
  }
  bus_dma_tag_destroy(sc->jme_cdata.jme_tx_tag);
  sc->jme_cdata.jme_tx_tag = ((void*)0);
 }

 if (sc->jme_cdata.jme_rx_tag != ((void*)0)) {
  for (i = 0; i < JME_RX_RING_CNT; i++) {
   rxd = &sc->jme_cdata.jme_rxdesc[i];
   if (rxd->rx_dmamap != ((void*)0)) {
    bus_dmamap_destroy(sc->jme_cdata.jme_rx_tag,
        rxd->rx_dmamap);
    rxd->rx_dmamap = ((void*)0);
   }
  }
  if (sc->jme_cdata.jme_rx_sparemap != ((void*)0)) {
   bus_dmamap_destroy(sc->jme_cdata.jme_rx_tag,
       sc->jme_cdata.jme_rx_sparemap);
   sc->jme_cdata.jme_rx_sparemap = ((void*)0);
  }
  bus_dma_tag_destroy(sc->jme_cdata.jme_rx_tag);
  sc->jme_cdata.jme_rx_tag = ((void*)0);
 }


 if (sc->jme_cdata.jme_ssb_tag != ((void*)0)) {
  if (sc->jme_rdata.jme_ssb_block_paddr)
   bus_dmamap_unload(sc->jme_cdata.jme_ssb_tag,
       sc->jme_cdata.jme_ssb_map);
  if (sc->jme_rdata.jme_ssb_block)
   bus_dmamem_free(sc->jme_cdata.jme_ssb_tag,
       sc->jme_rdata.jme_ssb_block,
       sc->jme_cdata.jme_ssb_map);
  sc->jme_rdata.jme_ssb_block = ((void*)0);
  sc->jme_rdata.jme_ssb_block_paddr = 0;
  bus_dma_tag_destroy(sc->jme_cdata.jme_ssb_tag);
  sc->jme_cdata.jme_ssb_tag = ((void*)0);
 }

 if (sc->jme_cdata.jme_buffer_tag != ((void*)0)) {
  bus_dma_tag_destroy(sc->jme_cdata.jme_buffer_tag);
  sc->jme_cdata.jme_buffer_tag = ((void*)0);
 }
 if (sc->jme_cdata.jme_ring_tag != ((void*)0)) {
  bus_dma_tag_destroy(sc->jme_cdata.jme_ring_tag);
  sc->jme_cdata.jme_ring_tag = ((void*)0);
 }
}
