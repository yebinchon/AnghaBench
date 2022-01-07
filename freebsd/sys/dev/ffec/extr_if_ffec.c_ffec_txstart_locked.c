
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int if_snd; } ;
struct ffec_softc {int txcount; int tx_watchdog_count; int txdesc_map; int txdesc_tag; int tx_idx_head; struct ifnet* ifp; int link_is_up; } ;


 int BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREWRITE ;
 int FEC_TDAR_REG ;
 int FEC_TDAR_TDAR ;
 int FFEC_ASSERT_LOCKED (struct ffec_softc*) ;
 int IFF_DRV_OACTIVE ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int IFQ_DRV_PREPEND (int *,struct mbuf*) ;
 int TX_DESC_COUNT ;
 int WATCHDOG_TIMEOUT_SECS ;
 int WR4 (struct ffec_softc*,int ,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 scalar_t__ ffec_setup_txbuf (struct ffec_softc*,int ,struct mbuf**) ;
 int next_txidx (struct ffec_softc*,int ) ;

__attribute__((used)) static void
ffec_txstart_locked(struct ffec_softc *sc)
{
 struct ifnet *ifp;
 struct mbuf *m;
 int enqueued;

 FFEC_ASSERT_LOCKED(sc);

 if (!sc->link_is_up)
  return;

 ifp = sc->ifp;

 if (ifp->if_drv_flags & IFF_DRV_OACTIVE)
  return;

 enqueued = 0;

 for (;;) {
  if (sc->txcount == (TX_DESC_COUNT-1)) {
   ifp->if_drv_flags |= IFF_DRV_OACTIVE;
   break;
  }
  IFQ_DRV_DEQUEUE(&ifp->if_snd, m);
  if (m == ((void*)0))
   break;
  if (ffec_setup_txbuf(sc, sc->tx_idx_head, &m) != 0) {
   IFQ_DRV_PREPEND(&ifp->if_snd, m);
   break;
  }
  BPF_MTAP(ifp, m);
  sc->tx_idx_head = next_txidx(sc, sc->tx_idx_head);
  ++enqueued;
 }

 if (enqueued != 0) {
  bus_dmamap_sync(sc->txdesc_tag, sc->txdesc_map, BUS_DMASYNC_PREWRITE);
  WR4(sc, FEC_TDAR_REG, FEC_TDAR_TDAR);
  bus_dmamap_sync(sc->txdesc_tag, sc->txdesc_map, BUS_DMASYNC_POSTWRITE);
  sc->tx_watchdog_count = WATCHDOG_TIMEOUT_SECS;
 }
}
