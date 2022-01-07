
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_rxbuf_data {struct bwi_rxbuf* rbd_buf; } ;
struct bwi_ring_data {int rdata_txrx_ctrl; } ;
struct bwi_softc {int sc_buf_dtag; struct bwi_rxbuf_data sc_rx_bdata; struct bwi_ring_data sc_rx_rdata; } ;
struct bwi_rxbuf {int * rb_mbuf; int rb_dmap; } ;


 int BWI_RX_NDESC ;
 int bus_dmamap_unload (int ,int ) ;
 int bwi_reset_rx_ring32 (struct bwi_softc*,int ) ;
 int m_freem (int *) ;

__attribute__((used)) static void
bwi_free_rx_ring32(struct bwi_softc *sc)
{
 struct bwi_ring_data *rd = &sc->sc_rx_rdata;
 struct bwi_rxbuf_data *rbd = &sc->sc_rx_bdata;
 int i;

 bwi_reset_rx_ring32(sc, rd->rdata_txrx_ctrl);

 for (i = 0; i < BWI_RX_NDESC; ++i) {
  struct bwi_rxbuf *rb = &rbd->rbd_buf[i];

  if (rb->rb_mbuf != ((void*)0)) {
   bus_dmamap_unload(sc->sc_buf_dtag, rb->rb_dmap);
   m_freem(rb->rb_mbuf);
   rb->rb_mbuf = ((void*)0);
  }
 }
}
