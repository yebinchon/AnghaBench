
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lagg_softc {int sc_destroying; int sc_media; int sc_ports; int vlan_detach; int vlan_attach; } ;
struct lagg_port {int dummy; } ;
struct ifnet {int if_flags; scalar_t__ if_softc; } ;


 struct lagg_port* CK_SLIST_FIRST (int *) ;
 int EVENTHANDLER_DEREGISTER (int ,int ) ;
 int IFF_UP ;
 int LAGG_LIST_LOCK () ;
 int LAGG_LIST_UNLOCK () ;
 int LAGG_SX_DESTROY (struct lagg_softc*) ;
 int LAGG_XLOCK (struct lagg_softc*) ;
 int LAGG_XUNLOCK (struct lagg_softc*) ;
 int M_LAGG ;
 int SLIST_REMOVE (int *,struct lagg_softc*,int ,int ) ;
 int V_lagg_list ;
 int ether_ifdetach (struct ifnet*) ;
 int free (struct lagg_softc*,int ) ;
 int if_free (struct ifnet*) ;
 int ifmedia_removeall (int *) ;
 int lagg_port_destroy (struct lagg_port*,int) ;
 int lagg_proto_detach (struct lagg_softc*) ;
 int lagg_softc ;
 int lagg_stop (struct lagg_softc*) ;
 int sc_entries ;
 int vlan_config ;
 int vlan_unconfig ;

__attribute__((used)) static void
lagg_clone_destroy(struct ifnet *ifp)
{
 struct lagg_softc *sc = (struct lagg_softc *)ifp->if_softc;
 struct lagg_port *lp;

 LAGG_XLOCK(sc);
 sc->sc_destroying = 1;
 lagg_stop(sc);
 ifp->if_flags &= ~IFF_UP;

 EVENTHANDLER_DEREGISTER(vlan_config, sc->vlan_attach);
 EVENTHANDLER_DEREGISTER(vlan_unconfig, sc->vlan_detach);


 while ((lp = CK_SLIST_FIRST(&sc->sc_ports)) != ((void*)0))
  lagg_port_destroy(lp, 1);


 lagg_proto_detach(sc);
 LAGG_XUNLOCK(sc);

 ifmedia_removeall(&sc->sc_media);
 ether_ifdetach(ifp);
 if_free(ifp);

 LAGG_LIST_LOCK();
 SLIST_REMOVE(&V_lagg_list, sc, lagg_softc, sc_entries);
 LAGG_LIST_UNLOCK();

 LAGG_SX_DESTROY(sc);
 free(sc, M_LAGG);
}
