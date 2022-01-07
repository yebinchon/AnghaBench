
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_dunit; struct adapter* if_softc; } ;
struct if_clone {int dummy; } ;
struct adapter {int media; int ifp_lock; int * ifp; } ;


 int ether_ifdetach (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int ifc_free_unit (struct if_clone*,int) ;
 int ifmedia_removeall (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int t4_trace_lock ;

__attribute__((used)) static int
t4_cloner_destroy(struct if_clone *ifc, struct ifnet *ifp)
{
 struct adapter *sc;
 int unit = ifp->if_dunit;

 sx_xlock(&t4_trace_lock);
 sc = ifp->if_softc;
 if (sc != ((void*)0)) {
  mtx_lock(&sc->ifp_lock);
  sc->ifp = ((void*)0);
  ifp->if_softc = ((void*)0);
  mtx_unlock(&sc->ifp_lock);
  ifmedia_removeall(&sc->media);
 }
 ether_ifdetach(ifp);
 if_free(ifp);
 ifc_free_unit(ifc, unit);
 sx_xunlock(&t4_trace_lock);

 return (0);
}
