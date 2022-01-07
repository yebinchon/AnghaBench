
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_drv_flags; } ;
struct ffec_softc {size_t tx_idx_tail; size_t tx_idx_head; scalar_t__ tx_watchdog_count; int txbuf_tag; struct ffec_bufmap* txbuf_map; struct ffec_hwdesc* txdesc_ring; struct ifnet* ifp; int txdesc_map; int txdesc_tag; } ;
struct ffec_hwdesc {int flags_len; } ;
struct ffec_bufmap {int * mbuf; int map; } ;
typedef int boolean_t ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int FEC_TXDESC_READY ;
 int FFEC_ASSERT_LOCKED (struct ffec_softc*) ;
 int IFF_DRV_OACTIVE ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int ffec_setup_txdesc (struct ffec_softc*,size_t,int ,int ) ;
 int ffec_txstart_locked (struct ffec_softc*) ;
 int m_freem (int *) ;
 size_t next_txidx (struct ffec_softc*,size_t) ;

__attribute__((used)) static void
ffec_txfinish_locked(struct ffec_softc *sc)
{
 struct ifnet *ifp;
 struct ffec_hwdesc *desc;
 struct ffec_bufmap *bmap;
 boolean_t retired_buffer;

 FFEC_ASSERT_LOCKED(sc);


 bus_dmamap_sync(sc->txdesc_tag, sc->txdesc_map, BUS_DMASYNC_PREREAD);
 bus_dmamap_sync(sc->txdesc_tag, sc->txdesc_map, BUS_DMASYNC_POSTREAD);
 ifp = sc->ifp;
 retired_buffer = 0;
 while (sc->tx_idx_tail != sc->tx_idx_head) {
  desc = &sc->txdesc_ring[sc->tx_idx_tail];
  if (desc->flags_len & FEC_TXDESC_READY)
   break;
  retired_buffer = 1;
  bmap = &sc->txbuf_map[sc->tx_idx_tail];
  bus_dmamap_sync(sc->txbuf_tag, bmap->map,
      BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(sc->txbuf_tag, bmap->map);
  m_freem(bmap->mbuf);
  bmap->mbuf = ((void*)0);
  ffec_setup_txdesc(sc, sc->tx_idx_tail, 0, 0);
  sc->tx_idx_tail = next_txidx(sc, sc->tx_idx_tail);
 }





 if (retired_buffer) {
  ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
  ffec_txstart_locked(sc);
 }


 if (sc->tx_idx_tail == sc->tx_idx_head) {
  sc->tx_watchdog_count = 0;
 }
}
