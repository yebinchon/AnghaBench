
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_flags; struct bridge_softc* if_softc; } ;
struct bridge_softc {int sc_stp; int sc_brcallout; int sc_spanlist; int sc_iflist; } ;
struct bridge_iflist {int dummy; } ;


 int BRIDGE_LIST_LOCK () ;
 int BRIDGE_LIST_UNLOCK () ;
 int BRIDGE_LOCK (struct bridge_softc*) ;
 int BRIDGE_LOCK_DESTROY (struct bridge_softc*) ;
 int BRIDGE_UNLOCK (struct bridge_softc*) ;
 int IFF_UP ;
 struct bridge_iflist* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct bridge_softc*,int ) ;
 int M_DEVBUF ;
 int bridge_delete_member (struct bridge_softc*,struct bridge_iflist*,int ) ;
 int bridge_delete_span (struct bridge_softc*,struct bridge_iflist*) ;
 int bridge_rtable_fini (struct bridge_softc*) ;
 int bridge_stop (struct ifnet*,int) ;
 int bstp_detach (int *) ;
 int callout_drain (int *) ;
 int ether_ifdetach (struct ifnet*) ;
 int free (struct bridge_softc*,int ) ;
 int if_free (struct ifnet*) ;
 int sc_list ;

__attribute__((used)) static void
bridge_clone_destroy(struct ifnet *ifp)
{
 struct bridge_softc *sc = ifp->if_softc;
 struct bridge_iflist *bif;

 BRIDGE_LOCK(sc);

 bridge_stop(ifp, 1);
 ifp->if_flags &= ~IFF_UP;

 while ((bif = LIST_FIRST(&sc->sc_iflist)) != ((void*)0))
  bridge_delete_member(sc, bif, 0);

 while ((bif = LIST_FIRST(&sc->sc_spanlist)) != ((void*)0)) {
  bridge_delete_span(sc, bif);
 }


 bridge_rtable_fini(sc);

 BRIDGE_UNLOCK(sc);

 callout_drain(&sc->sc_brcallout);

 BRIDGE_LIST_LOCK();
 LIST_REMOVE(sc, sc_list);
 BRIDGE_LIST_UNLOCK();

 bstp_detach(&sc->sc_stp);
 ether_ifdetach(ifp);
 if_free(ifp);

 BRIDGE_LOCK_DESTROY(sc);
 free(sc, M_DEVBUF);
}
