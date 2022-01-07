
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * imo_multicast_ifp; int imo_head; } ;
struct pfsync_softc {struct ifnet* sc_sync_if; TYPE_1__ sc_imo; } ;
struct ifnet {int dummy; } ;


 int PFSYNC_LOCK (struct pfsync_softc*) ;
 int PFSYNC_UNLOCK (struct pfsync_softc*) ;
 struct pfsync_softc* V_pfsyncif ;
 int ip_mfilter_init (int *) ;

void
pfsync_detach_ifnet(struct ifnet *ifp)
{
 struct pfsync_softc *sc = V_pfsyncif;

 if (sc == ((void*)0))
  return;

 PFSYNC_LOCK(sc);

 if (sc->sc_sync_if == ifp) {




  ip_mfilter_init(&sc->sc_imo.imo_head);
  sc->sc_imo.imo_multicast_ifp = ((void*)0);
  sc->sc_sync_if = ((void*)0);
 }

 PFSYNC_UNLOCK(sc);
}
