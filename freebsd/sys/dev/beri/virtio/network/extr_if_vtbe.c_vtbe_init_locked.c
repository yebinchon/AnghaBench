
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtbe_softc {struct ifnet* ifp; } ;
struct ifnet {int if_drv_flags; } ;


 int IFF_DRV_RUNNING ;
 int VTBE_ASSERT_LOCKED (struct vtbe_softc*) ;

__attribute__((used)) static void
vtbe_init_locked(struct vtbe_softc *sc)
{
 struct ifnet *ifp = sc->ifp;

 VTBE_ASSERT_LOCKED(sc);

 if (ifp->if_drv_flags & IFF_DRV_RUNNING)
  return;

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
}
