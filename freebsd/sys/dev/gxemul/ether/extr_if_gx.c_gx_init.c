
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_drv_flags; } ;
struct gx_softc {struct ifnet* sc_ifp; } ;


 int IFF_DRV_RUNNING ;

__attribute__((used)) static void
gx_init(void *arg)
{
 struct ifnet *ifp;
 struct gx_softc *sc;

 sc = arg;
 ifp = sc->sc_ifp;

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
  ifp->if_drv_flags &= ~IFF_DRV_RUNNING;

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
}
