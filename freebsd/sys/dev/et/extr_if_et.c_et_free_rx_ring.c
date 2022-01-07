
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et_softc {int sc_rx_tag; struct et_rxbuf_data* sc_rx_data; struct et_rxdesc_ring* sc_rx_ring; int sc_rx_mini_tag; } ;
struct et_rxdesc_ring {int rr_dmap; } ;
struct et_rxbuf_data {struct et_rxbuf* rbd_buf; } ;
struct et_rxbuf {int * rb_mbuf; int rb_dmap; } ;


 int BUS_DMASYNC_POSTREAD ;
 int ET_RX_NDESC ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int m_freem (int *) ;

__attribute__((used)) static void
et_free_rx_ring(struct et_softc *sc)
{
 struct et_rxbuf_data *rbd;
 struct et_rxdesc_ring *rx_ring;
 struct et_rxbuf *rb;
 int i;


 rx_ring = &sc->sc_rx_ring[0];
 rbd = &sc->sc_rx_data[0];
 for (i = 0; i < ET_RX_NDESC; ++i) {
  rb = &rbd->rbd_buf[i];
  if (rb->rb_mbuf != ((void*)0)) {
   bus_dmamap_sync(sc->sc_rx_mini_tag, rx_ring->rr_dmap,
       BUS_DMASYNC_POSTREAD);
   bus_dmamap_unload(sc->sc_rx_mini_tag, rb->rb_dmap);
   m_freem(rb->rb_mbuf);
   rb->rb_mbuf = ((void*)0);
  }
 }


 rx_ring = &sc->sc_rx_ring[1];
 rbd = &sc->sc_rx_data[1];
 for (i = 0; i < ET_RX_NDESC; ++i) {
  rb = &rbd->rbd_buf[i];
  if (rb->rb_mbuf != ((void*)0)) {
   bus_dmamap_sync(sc->sc_rx_tag, rx_ring->rr_dmap,
       BUS_DMASYNC_POSTREAD);
   bus_dmamap_unload(sc->sc_rx_tag, rb->rb_dmap);
   m_freem(rb->rb_mbuf);
   rb->rb_mbuf = ((void*)0);
  }
 }
}
