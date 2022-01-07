
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int if_snd; struct age_softc* if_softc; } ;
struct age_softc {int age_flags; int age_watchdog_timer; } ;


 int AGE_COMMIT_MBOX (struct age_softc*) ;
 int AGE_FLAG_LINK ;
 int AGE_LOCK_ASSERT (struct age_softc*) ;
 int AGE_TX_TIMEOUT ;
 int ETHER_BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int IFQ_DRV_PREPEND (int *,struct mbuf*) ;
 scalar_t__ age_encap (struct age_softc*,struct mbuf**) ;

__attribute__((used)) static void
age_start_locked(struct ifnet *ifp)
{
        struct age_softc *sc;
        struct mbuf *m_head;
 int enq;

 sc = ifp->if_softc;

 AGE_LOCK_ASSERT(sc);

 if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
     IFF_DRV_RUNNING || (sc->age_flags & AGE_FLAG_LINK) == 0)
  return;

 for (enq = 0; !IFQ_DRV_IS_EMPTY(&ifp->if_snd); ) {
  IFQ_DRV_DEQUEUE(&ifp->if_snd, m_head);
  if (m_head == ((void*)0))
   break;





  if (age_encap(sc, &m_head)) {
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

  AGE_COMMIT_MBOX(sc);

  sc->age_watchdog_timer = AGE_TX_TIMEOUT;
 }
}
