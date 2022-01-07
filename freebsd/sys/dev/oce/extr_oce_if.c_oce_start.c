
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int if_snd; TYPE_4__* if_softc; } ;
struct TYPE_9__ {TYPE_3__** wq; TYPE_1__* ifp; int link_status; } ;
struct TYPE_7__ {int tx_stops; } ;
struct TYPE_8__ {TYPE_2__ tx_stats; int tx_lock; } ;
struct TYPE_6__ {int if_snd; } ;
typedef TYPE_4__* POCE_SOFTC ;


 int ETHER_BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_PREPEND (int *,struct mbuf*) ;
 int IF_DEQUEUE (int *,struct mbuf*) ;
 int LOCK (int *) ;
 scalar_t__ TRUE ;
 int UNLOCK (int *) ;
 int oce_tx (TYPE_4__*,struct mbuf**,int) ;

void
oce_start(struct ifnet *ifp)
{
 POCE_SOFTC sc = ifp->if_softc;
 struct mbuf *m;
 int rc = 0;
 int def_q = 0;

 if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
   IFF_DRV_RUNNING)
  return;

 if (!sc->link_status)
  return;

 do {
  IF_DEQUEUE(&sc->ifp->if_snd, m);
  if (m == ((void*)0))
   break;

  LOCK(&sc->wq[def_q]->tx_lock);
  rc = oce_tx(sc, &m, def_q);
  UNLOCK(&sc->wq[def_q]->tx_lock);
  if (rc) {
   if (m != ((void*)0)) {
    sc->wq[def_q]->tx_stats.tx_stops ++;
    ifp->if_drv_flags |= IFF_DRV_OACTIVE;
    IFQ_DRV_PREPEND(&ifp->if_snd, m);
    m = ((void*)0);
   }
   break;
  }
  if (m != ((void*)0))
   ETHER_BPF_MTAP(ifp, m);

 } while (TRUE);

 return;
}
