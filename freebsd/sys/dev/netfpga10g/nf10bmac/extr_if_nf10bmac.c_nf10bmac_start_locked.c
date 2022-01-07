
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf10bmac_softc {int nf10bmac_flags; scalar_t__ nf10bmac_watchdog_timer; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int if_snd; struct nf10bmac_softc* if_softc; } ;


 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int NF10BMAC_FLAGS_LINK ;
 int NF10BMAC_LOCK_ASSERT (struct nf10bmac_softc*) ;
 int NF10BMAC_MAX_PKTS ;
 scalar_t__ NF10BMAC_WATCHDOG_TIME ;
 int nf10bmac_tx_locked (struct nf10bmac_softc*,struct mbuf*) ;

__attribute__((used)) static void
nf10bmac_start_locked(struct ifnet *ifp)
{
 struct nf10bmac_softc *sc;
 int count, error;

 sc = ifp->if_softc;
 NF10BMAC_LOCK_ASSERT(sc);

 if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
     IFF_DRV_RUNNING || (sc->nf10bmac_flags & NF10BMAC_FLAGS_LINK) == 0)
  return;
 for (count = 0; !IFQ_DRV_IS_EMPTY(&ifp->if_snd) &&
     count < NF10BMAC_MAX_PKTS; count++) {
  struct mbuf *m;

  IFQ_DRV_DEQUEUE(&ifp->if_snd, m);
  if (m == ((void*)0))
   break;
  error = nf10bmac_tx_locked(sc, m);
  if (error != 0)
   break;
 }
}
