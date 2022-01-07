
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * ti_parent_tag; int ti_gib_map; int ti_gib_tag; int ti_event_ring_map; int ti_event_ring_tag; int ti_status_map; int ti_status_tag; int ti_tx_ring_map; int ti_tx_ring_tag; int ti_rx_return_ring_map; int ti_rx_return_ring_tag; int ti_rx_mini_ring_map; int ti_rx_mini_ring_tag; int ti_rx_jumbo_ring_map; int ti_rx_jumbo_ring_tag; int ti_rx_std_ring_map; int ti_rx_std_ring_tag; int * ti_tx_tag; TYPE_2__* ti_txdesc; int * ti_rx_mini_tag; int * ti_rx_mini_sparemap; int ** ti_rx_mini_maps; int * ti_rx_jumbo_tag; int * ti_rx_jumbo_sparemap; int ** ti_rx_jumbo_maps; int * ti_rx_std_tag; int * ti_rx_std_sparemap; int ** ti_rx_std_maps; } ;
struct TYPE_4__ {int ti_info_paddr; int ti_info; int ti_event_ring_paddr; int ti_event_ring; int ti_status_paddr; int ti_status; int ti_tx_ring_paddr; int ti_tx_ring; int ti_rx_return_ring_paddr; int ti_rx_return_ring; int ti_rx_mini_ring_paddr; int ti_rx_mini_ring; int ti_rx_jumbo_ring_paddr; int ti_rx_jumbo_ring; int ti_rx_std_ring_paddr; int ti_rx_std_ring; } ;
struct ti_softc {TYPE_3__ ti_cdata; TYPE_1__ ti_rdata; } ;
struct TYPE_5__ {int * tx_dmamap; } ;


 int TI_JUMBO_RX_RING_CNT ;
 int TI_MINI_RX_RING_CNT ;
 int TI_STD_RX_RING_CNT ;
 int TI_TX_RING_CNT ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int ti_dma_ring_free (struct ti_softc*,int *,void*,int ,int *) ;

__attribute__((used)) static void
ti_dma_free(struct ti_softc *sc)
{
 int i;


 for (i = 0; i < TI_STD_RX_RING_CNT; i++) {
  if (sc->ti_cdata.ti_rx_std_maps[i]) {
   bus_dmamap_destroy(sc->ti_cdata.ti_rx_std_tag,
       sc->ti_cdata.ti_rx_std_maps[i]);
   sc->ti_cdata.ti_rx_std_maps[i] = ((void*)0);
  }
 }
 if (sc->ti_cdata.ti_rx_std_sparemap) {
  bus_dmamap_destroy(sc->ti_cdata.ti_rx_std_tag,
      sc->ti_cdata.ti_rx_std_sparemap);
  sc->ti_cdata.ti_rx_std_sparemap = ((void*)0);
 }
 if (sc->ti_cdata.ti_rx_std_tag) {
  bus_dma_tag_destroy(sc->ti_cdata.ti_rx_std_tag);
  sc->ti_cdata.ti_rx_std_tag = ((void*)0);
 }


 for (i = 0; i < TI_JUMBO_RX_RING_CNT; i++) {
  if (sc->ti_cdata.ti_rx_jumbo_maps[i]) {
   bus_dmamap_destroy(sc->ti_cdata.ti_rx_jumbo_tag,
       sc->ti_cdata.ti_rx_jumbo_maps[i]);
   sc->ti_cdata.ti_rx_jumbo_maps[i] = ((void*)0);
  }
 }
 if (sc->ti_cdata.ti_rx_jumbo_sparemap) {
  bus_dmamap_destroy(sc->ti_cdata.ti_rx_jumbo_tag,
      sc->ti_cdata.ti_rx_jumbo_sparemap);
  sc->ti_cdata.ti_rx_jumbo_sparemap = ((void*)0);
 }
 if (sc->ti_cdata.ti_rx_jumbo_tag) {
  bus_dma_tag_destroy(sc->ti_cdata.ti_rx_jumbo_tag);
  sc->ti_cdata.ti_rx_jumbo_tag = ((void*)0);
 }


 for (i = 0; i < TI_MINI_RX_RING_CNT; i++) {
  if (sc->ti_cdata.ti_rx_mini_maps[i]) {
   bus_dmamap_destroy(sc->ti_cdata.ti_rx_mini_tag,
       sc->ti_cdata.ti_rx_mini_maps[i]);
   sc->ti_cdata.ti_rx_mini_maps[i] = ((void*)0);
  }
 }
 if (sc->ti_cdata.ti_rx_mini_sparemap) {
  bus_dmamap_destroy(sc->ti_cdata.ti_rx_mini_tag,
      sc->ti_cdata.ti_rx_mini_sparemap);
  sc->ti_cdata.ti_rx_mini_sparemap = ((void*)0);
 }
 if (sc->ti_cdata.ti_rx_mini_tag) {
  bus_dma_tag_destroy(sc->ti_cdata.ti_rx_mini_tag);
  sc->ti_cdata.ti_rx_mini_tag = ((void*)0);
 }


 for (i = 0; i < TI_TX_RING_CNT; i++) {
  if (sc->ti_cdata.ti_txdesc[i].tx_dmamap) {
   bus_dmamap_destroy(sc->ti_cdata.ti_tx_tag,
       sc->ti_cdata.ti_txdesc[i].tx_dmamap);
   sc->ti_cdata.ti_txdesc[i].tx_dmamap = ((void*)0);
  }
 }
 if (sc->ti_cdata.ti_tx_tag) {
  bus_dma_tag_destroy(sc->ti_cdata.ti_tx_tag);
  sc->ti_cdata.ti_tx_tag = ((void*)0);
 }


 ti_dma_ring_free(sc, &sc->ti_cdata.ti_rx_std_ring_tag,
     (void *)&sc->ti_rdata.ti_rx_std_ring,
     sc->ti_cdata.ti_rx_std_ring_map,
     &sc->ti_rdata.ti_rx_std_ring_paddr);

 ti_dma_ring_free(sc, &sc->ti_cdata.ti_rx_jumbo_ring_tag,
     (void *)&sc->ti_rdata.ti_rx_jumbo_ring,
     sc->ti_cdata.ti_rx_jumbo_ring_map,
     &sc->ti_rdata.ti_rx_jumbo_ring_paddr);

 ti_dma_ring_free(sc, &sc->ti_cdata.ti_rx_mini_ring_tag,
     (void *)&sc->ti_rdata.ti_rx_mini_ring,
     sc->ti_cdata.ti_rx_mini_ring_map,
     &sc->ti_rdata.ti_rx_mini_ring_paddr);

 ti_dma_ring_free(sc, &sc->ti_cdata.ti_rx_return_ring_tag,
     (void *)&sc->ti_rdata.ti_rx_return_ring,
     sc->ti_cdata.ti_rx_return_ring_map,
     &sc->ti_rdata.ti_rx_return_ring_paddr);

 ti_dma_ring_free(sc, &sc->ti_cdata.ti_tx_ring_tag,
     (void *)&sc->ti_rdata.ti_tx_ring, sc->ti_cdata.ti_tx_ring_map,
     &sc->ti_rdata.ti_tx_ring_paddr);

 ti_dma_ring_free(sc, &sc->ti_cdata.ti_status_tag,
     (void *)&sc->ti_rdata.ti_status, sc->ti_cdata.ti_status_map,
     &sc->ti_rdata.ti_status_paddr);

 ti_dma_ring_free(sc, &sc->ti_cdata.ti_event_ring_tag,
     (void *)&sc->ti_rdata.ti_event_ring,
     sc->ti_cdata.ti_event_ring_map, &sc->ti_rdata.ti_event_ring_paddr);

 ti_dma_ring_free(sc, &sc->ti_cdata.ti_gib_tag,
     (void *)&sc->ti_rdata.ti_info, sc->ti_cdata.ti_gib_map,
     &sc->ti_rdata.ti_info_paddr);


 if (sc->ti_cdata.ti_parent_tag) {
  bus_dma_tag_destroy(sc->ti_cdata.ti_parent_tag);
  sc->ti_cdata.ti_parent_tag = ((void*)0);
 }
}
