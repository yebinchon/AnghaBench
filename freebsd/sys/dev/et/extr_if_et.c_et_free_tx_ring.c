
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et_txdesc_ring {int dummy; } ;
struct et_txbuf_data {struct et_txbuf* tbd_buf; } ;
struct et_txbuf {int * tb_mbuf; int tb_dmap; } ;
struct et_softc {int sc_mbuf_dtag; int sc_tx_tag; struct et_txdesc_ring sc_tx_ring; struct et_txbuf_data sc_tx_data; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int ET_TX_NDESC ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int m_freem (int *) ;

__attribute__((used)) static void
et_free_tx_ring(struct et_softc *sc)
{
 struct et_txdesc_ring *tx_ring;
 struct et_txbuf_data *tbd;
 struct et_txbuf *tb;
 int i;

 tbd = &sc->sc_tx_data;
 tx_ring = &sc->sc_tx_ring;
 for (i = 0; i < ET_TX_NDESC; ++i) {
  tb = &tbd->tbd_buf[i];
  if (tb->tb_mbuf != ((void*)0)) {
   bus_dmamap_sync(sc->sc_tx_tag, tb->tb_dmap,
       BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(sc->sc_mbuf_dtag, tb->tb_dmap);
   m_freem(tb->tb_mbuf);
   tb->tb_mbuf = ((void*)0);
  }
 }
}
