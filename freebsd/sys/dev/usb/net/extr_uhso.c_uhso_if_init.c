
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhso_softc {int sc_mtx; struct ifnet* sc_ifp; } ;
struct ifnet {int if_drv_flags; int if_flags; } ;


 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 int UHSO_DPRINTF (int,char*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int uhso_if_stop (struct uhso_softc*) ;

__attribute__((used)) static void
uhso_if_init(void *priv)
{
 struct uhso_softc *sc = priv;
 struct ifnet *ifp = sc->sc_ifp;

 mtx_lock(&sc->sc_mtx);
 uhso_if_stop(sc);
 ifp = sc->sc_ifp;
 ifp->if_flags |= IFF_UP;
 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 mtx_unlock(&sc->sc_mtx);

 UHSO_DPRINTF(2, "ifnet initialized\n");
}
