
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtbe_softc {struct ifnet* ifp; } ;
struct ifnet {int if_drv_flags; } ;


 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int VTBE_ASSERT_LOCKED (struct vtbe_softc*) ;

__attribute__((used)) static void
vtbe_stop_locked(struct vtbe_softc *sc)
{
 struct ifnet *ifp;

 VTBE_ASSERT_LOCKED(sc);

 ifp = sc->ifp;
 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
}
