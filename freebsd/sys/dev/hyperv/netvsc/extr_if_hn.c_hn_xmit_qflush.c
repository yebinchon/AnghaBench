
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rm_priotracker {int dummy; } ;
struct ifnet {struct hn_softc* if_softc; } ;
struct hn_softc {int hn_tx_ring_inuse; int hn_xvf_flags; int hn_vf_lock; TYPE_1__* hn_vf_ifp; int * hn_tx_ring; } ;
struct TYPE_2__ {int (* if_qflush ) (TYPE_1__*) ;} ;


 int HN_XVFFLAG_ENABLED ;
 int hn_tx_ring_qflush (int *) ;
 int if_qflush (struct ifnet*) ;
 int rm_rlock (int *,struct rm_priotracker*) ;
 int rm_runlock (int *,struct rm_priotracker*) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void
hn_xmit_qflush(struct ifnet *ifp)
{
 struct hn_softc *sc = ifp->if_softc;
 struct rm_priotracker pt;
 int i;

 for (i = 0; i < sc->hn_tx_ring_inuse; ++i)
  hn_tx_ring_qflush(&sc->hn_tx_ring[i]);
 if_qflush(ifp);

 rm_rlock(&sc->hn_vf_lock, &pt);
 if (sc->hn_xvf_flags & HN_XVFFLAG_ENABLED)
  sc->hn_vf_ifp->if_qflush(sc->hn_vf_ifp);
 rm_runlock(&sc->hn_vf_lock, &pt);
}
