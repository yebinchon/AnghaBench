
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int if_snd; } ;
struct dwc_softc {int txcount; int tx_watchdog_count; int tx_idx_head; struct ifnet* ifp; int link_is_up; } ;


 int BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int DWC_ASSERT_LOCKED (struct dwc_softc*) ;
 int IFF_DRV_OACTIVE ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int IFQ_DRV_PREPEND (int *,struct mbuf*) ;
 int TRANSMIT_POLL_DEMAND ;
 int TX_DESC_COUNT ;
 int WATCHDOG_TIMEOUT_SECS ;
 int WRITE4 (struct dwc_softc*,int ,int) ;
 scalar_t__ dwc_setup_txbuf (struct dwc_softc*,int ,struct mbuf**) ;
 int next_txidx (struct dwc_softc*,int ) ;

__attribute__((used)) static void
dwc_txstart_locked(struct dwc_softc *sc)
{
 struct ifnet *ifp;
 struct mbuf *m;
 int enqueued;

 DWC_ASSERT_LOCKED(sc);

 if (!sc->link_is_up)
  return;

 ifp = sc->ifp;

 if (ifp->if_drv_flags & IFF_DRV_OACTIVE) {
  return;
 }

 enqueued = 0;

 for (;;) {
  if (sc->txcount == (TX_DESC_COUNT-1)) {
   ifp->if_drv_flags |= IFF_DRV_OACTIVE;
   break;
  }

  IFQ_DRV_DEQUEUE(&ifp->if_snd, m);
  if (m == ((void*)0))
   break;
  if (dwc_setup_txbuf(sc, sc->tx_idx_head, &m) != 0) {
   IFQ_DRV_PREPEND(&ifp->if_snd, m);
   break;
  }
  BPF_MTAP(ifp, m);
  sc->tx_idx_head = next_txidx(sc, sc->tx_idx_head);
  ++enqueued;
 }

 if (enqueued != 0) {
  WRITE4(sc, TRANSMIT_POLL_DEMAND, 0x1);
  sc->tx_watchdog_count = WATCHDOG_TIMEOUT_SECS;
 }
}
