
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct ieee80211com {int ic_vaps; } ;
struct ndis_softc {scalar_t__ ndis_80211; int ndis_rxlock; struct ifnet* ifp; struct ieee80211com ndis_ic; int ndis_rxqueue; } ;
struct mbuf {int dummy; } ;
struct ifnet {int (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct ieee80211vap {int iv_bss; int (* iv_deliver_data ) (struct ieee80211vap*,int ,struct mbuf*) ;} ;
typedef int ndis_miniport_block ;
struct TYPE_3__ {int * do_devext; } ;
typedef TYPE_1__ device_object ;


 int KeAcquireSpinLock (int *,int *) ;
 int KeReleaseSpinLock (int *,int ) ;
 struct ieee80211vap* TAILQ_FIRST (int *) ;
 struct mbuf* mbufq_dequeue (int *) ;
 int stub1 (struct ieee80211vap*,int ,struct mbuf*) ;
 int stub2 (struct ifnet*,struct mbuf*) ;

__attribute__((used)) static void
ndis_inputtask(device_object *dobj, void *arg)
{
 ndis_miniport_block *block;
 struct ndis_softc *sc = arg;
 struct mbuf *m;
 uint8_t irql;

 block = dobj->do_devext;

 KeAcquireSpinLock(&sc->ndis_rxlock, &irql);
 while ((m = mbufq_dequeue(&sc->ndis_rxqueue)) != ((void*)0)) {
  KeReleaseSpinLock(&sc->ndis_rxlock, irql);
  if ((sc->ndis_80211 != 0)) {
   struct ieee80211com *ic = &sc->ndis_ic;
   struct ieee80211vap *vap = TAILQ_FIRST(&ic->ic_vaps);

   if (vap != ((void*)0))
    vap->iv_deliver_data(vap, vap->iv_bss, m);
  } else {
   struct ifnet *ifp = sc->ifp;

   (*ifp->if_input)(ifp, m);
  }
  KeAcquireSpinLock(&sc->ndis_rxlock, &irql);
 }
 KeReleaseSpinLock(&sc->ndis_rxlock, irql);
}
