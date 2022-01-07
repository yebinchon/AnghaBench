
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct et_txstatus_data {int txsd_paddr; int txsd_dmap; int txsd_status; int txsd_dtag; } ;
struct et_txdesc_ring {int tr_paddr; int tr_dmap; int tr_desc; int tr_dtag; } ;
struct et_txbuf_data {TYPE_2__* tbd_buf; } ;
struct et_rxstatus_data {int dummy; } ;
struct et_rxstat_ring {int rsr_paddr; int rsr_dmap; int rsr_stat; int rsr_dtag; } ;
struct et_softc {int * sc_dtag; struct et_txstatus_data sc_tx_status; struct et_txdesc_ring sc_tx_ring; struct et_rxstatus_data sc_rx_status; struct et_rxstat_ring sc_rxstat_ring; struct et_rxdesc_ring* sc_rx_ring; int * sc_tx_tag; struct et_txbuf_data sc_tx_data; int * sc_rx_tag; int * sc_rx_sparemap; struct et_rxbuf_data* sc_rx_data; int * sc_rx_mini_tag; int * sc_rx_mini_sparemap; } ;
struct et_rxdesc_ring {int rr_paddr; int rr_dmap; int rr_desc; int rr_dtag; } ;
struct et_rxbuf_data {TYPE_1__* rbd_buf; } ;
struct TYPE_4__ {int * tb_dmap; } ;
struct TYPE_3__ {int * rb_dmap; } ;


 int ET_RX_NDESC ;
 int ET_TX_NDESC ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int et_dma_ring_free (struct et_softc*,int *,void*,int ,int *) ;

__attribute__((used)) static void
et_dma_free(struct et_softc *sc)
{
 struct et_txdesc_ring *tx_ring;
 struct et_rxdesc_ring *rx_ring;
 struct et_txstatus_data *txsd;
 struct et_rxstat_ring *rxst_ring;
 struct et_rxstatus_data *rxsd;
 struct et_rxbuf_data *rbd;
        struct et_txbuf_data *tbd;
 int i;


 rbd = &sc->sc_rx_data[0];
 for (i = 0; i < ET_RX_NDESC; i++) {
  if (rbd->rbd_buf[i].rb_dmap) {
   bus_dmamap_destroy(sc->sc_rx_mini_tag,
       rbd->rbd_buf[i].rb_dmap);
   rbd->rbd_buf[i].rb_dmap = ((void*)0);
  }
 }
 if (sc->sc_rx_mini_sparemap) {
  bus_dmamap_destroy(sc->sc_rx_mini_tag, sc->sc_rx_mini_sparemap);
  sc->sc_rx_mini_sparemap = ((void*)0);
 }
 if (sc->sc_rx_mini_tag) {
  bus_dma_tag_destroy(sc->sc_rx_mini_tag);
  sc->sc_rx_mini_tag = ((void*)0);
 }


 rbd = &sc->sc_rx_data[1];
 for (i = 0; i < ET_RX_NDESC; i++) {
  if (rbd->rbd_buf[i].rb_dmap) {
   bus_dmamap_destroy(sc->sc_rx_tag,
       rbd->rbd_buf[i].rb_dmap);
   rbd->rbd_buf[i].rb_dmap = ((void*)0);
  }
 }
 if (sc->sc_rx_sparemap) {
  bus_dmamap_destroy(sc->sc_rx_tag, sc->sc_rx_sparemap);
  sc->sc_rx_sparemap = ((void*)0);
 }
 if (sc->sc_rx_tag) {
  bus_dma_tag_destroy(sc->sc_rx_tag);
  sc->sc_rx_tag = ((void*)0);
 }


 tbd = &sc->sc_tx_data;
 for (i = 0; i < ET_TX_NDESC; i++) {
  if (tbd->tbd_buf[i].tb_dmap) {
   bus_dmamap_destroy(sc->sc_tx_tag,
       tbd->tbd_buf[i].tb_dmap);
   tbd->tbd_buf[i].tb_dmap = ((void*)0);
  }
 }
 if (sc->sc_tx_tag) {
  bus_dma_tag_destroy(sc->sc_tx_tag);
  sc->sc_tx_tag = ((void*)0);
 }


 rx_ring = &sc->sc_rx_ring[0];
 et_dma_ring_free(sc, &rx_ring->rr_dtag, (void *)&rx_ring->rr_desc,
     rx_ring->rr_dmap, &rx_ring->rr_paddr);

 rx_ring = &sc->sc_rx_ring[1];
 et_dma_ring_free(sc, &rx_ring->rr_dtag, (void *)&rx_ring->rr_desc,
     rx_ring->rr_dmap, &rx_ring->rr_paddr);

 rxst_ring = &sc->sc_rxstat_ring;
 et_dma_ring_free(sc, &rxst_ring->rsr_dtag, (void *)&rxst_ring->rsr_stat,
     rxst_ring->rsr_dmap, &rxst_ring->rsr_paddr);

 rxsd = &sc->sc_rx_status;
 et_dma_ring_free(sc, &rxst_ring->rsr_dtag, (void *)&rxst_ring->rsr_stat,
     rxst_ring->rsr_dmap, &rxst_ring->rsr_paddr);

 tx_ring = &sc->sc_tx_ring;
 et_dma_ring_free(sc, &tx_ring->tr_dtag, (void *)&tx_ring->tr_desc,
     tx_ring->tr_dmap, &tx_ring->tr_paddr);

 txsd = &sc->sc_tx_status;
 et_dma_ring_free(sc, &txsd->txsd_dtag, (void *)&txsd->txsd_status,
     txsd->txsd_dmap, &txsd->txsd_paddr);


 if (sc->sc_dtag) {
  bus_dma_tag_destroy(sc->sc_dtag);
  sc->sc_dtag = ((void*)0);
 }
}
