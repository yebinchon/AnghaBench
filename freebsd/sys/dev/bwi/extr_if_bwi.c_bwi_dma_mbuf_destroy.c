
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_txbuf_data {struct bwi_txbuf* tbd_buf; } ;
struct bwi_txbuf {int tb_dmap; int * tb_ni; int * tb_mbuf; } ;
struct bwi_rxbuf_data {struct bwi_rxbuf* rbd_buf; int rbd_tmp_dmap; } ;
struct bwi_softc {int * sc_buf_dtag; struct bwi_rxbuf_data sc_rx_bdata; struct bwi_txbuf_data* sc_tx_bdata; } ;
struct bwi_rxbuf {int rb_dmap; int * rb_mbuf; } ;


 int BWI_RX_NDESC ;
 int BWI_TX_NDESC ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int ) ;
 int bus_dmamap_unload (int *,int ) ;
 int ieee80211_free_node (int *) ;
 int m_freem (int *) ;

__attribute__((used)) static void
bwi_dma_mbuf_destroy(struct bwi_softc *sc, int ntx, int nrx)
{
 int i, j;

 if (sc->sc_buf_dtag == ((void*)0))
  return;

 for (i = 0; i < ntx; ++i) {
  struct bwi_txbuf_data *tbd = &sc->sc_tx_bdata[i];

  for (j = 0; j < BWI_TX_NDESC; ++j) {
   struct bwi_txbuf *tb = &tbd->tbd_buf[j];

   if (tb->tb_mbuf != ((void*)0)) {
    bus_dmamap_unload(sc->sc_buf_dtag,
        tb->tb_dmap);
    m_freem(tb->tb_mbuf);
   }
   if (tb->tb_ni != ((void*)0))
    ieee80211_free_node(tb->tb_ni);
   bus_dmamap_destroy(sc->sc_buf_dtag, tb->tb_dmap);
  }
 }

 if (nrx) {
  struct bwi_rxbuf_data *rbd = &sc->sc_rx_bdata;

  bus_dmamap_destroy(sc->sc_buf_dtag, rbd->rbd_tmp_dmap);
  for (j = 0; j < BWI_RX_NDESC; ++j) {
   struct bwi_rxbuf *rb = &rbd->rbd_buf[j];

   if (rb->rb_mbuf != ((void*)0)) {
    bus_dmamap_unload(sc->sc_buf_dtag,
        rb->rb_dmap);
    m_freem(rb->rb_mbuf);
   }
   bus_dmamap_destroy(sc->sc_buf_dtag, rb->rb_dmap);
  }
 }

 bus_dma_tag_destroy(sc->sc_buf_dtag);
 sc->sc_buf_dtag = ((void*)0);
}
