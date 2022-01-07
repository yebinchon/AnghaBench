
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ stge_tx_cnt; } ;
struct stge_softc {scalar_t__ sc_link; int sc_watchdog_timer; TYPE_1__ sc_cdata; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int if_snd; struct stge_softc* if_softc; } ;


 int CSR_WRITE_4 (struct stge_softc*,int ,int ) ;
 int DMAC_TxDMAPollNow ;
 int ETHER_BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int IFQ_DRV_PREPEND (int *,struct mbuf*) ;
 int STGE_DMACtrl ;
 int STGE_LOCK_ASSERT (struct stge_softc*) ;
 scalar_t__ STGE_TX_HIWAT ;
 scalar_t__ stge_encap (struct stge_softc*,struct mbuf**) ;

__attribute__((used)) static void
stge_start_locked(struct ifnet *ifp)
{
        struct stge_softc *sc;
        struct mbuf *m_head;
 int enq;

 sc = ifp->if_softc;

 STGE_LOCK_ASSERT(sc);

 if ((ifp->if_drv_flags & (IFF_DRV_RUNNING|IFF_DRV_OACTIVE)) !=
     IFF_DRV_RUNNING || sc->sc_link == 0)
  return;

 for (enq = 0; !IFQ_DRV_IS_EMPTY(&ifp->if_snd); ) {
  if (sc->sc_cdata.stge_tx_cnt >= STGE_TX_HIWAT) {
   ifp->if_drv_flags |= IFF_DRV_OACTIVE;
   break;
  }

  IFQ_DRV_DEQUEUE(&ifp->if_snd, m_head);
  if (m_head == ((void*)0))
   break;





  if (stge_encap(sc, &m_head)) {
   if (m_head == ((void*)0))
    break;
   IFQ_DRV_PREPEND(&ifp->if_snd, m_head);
   ifp->if_drv_flags |= IFF_DRV_OACTIVE;
   break;
  }

  enq++;




  ETHER_BPF_MTAP(ifp, m_head);
 }

 if (enq > 0) {

  CSR_WRITE_4(sc, STGE_DMACtrl, DMAC_TxDMAPollNow);


  sc->sc_watchdog_timer = 5;
 }
}
