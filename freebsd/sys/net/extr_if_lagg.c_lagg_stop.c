
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lagg_softc {struct ifnet* sc_ifp; } ;
struct ifnet {int if_drv_flags; } ;


 int IFF_DRV_RUNNING ;
 int LAGG_XLOCK_ASSERT (struct lagg_softc*) ;
 int lagg_proto_stop (struct lagg_softc*) ;

__attribute__((used)) static void
lagg_stop(struct lagg_softc *sc)
{
 struct ifnet *ifp = sc->sc_ifp;

 LAGG_XLOCK_ASSERT(sc);

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
  return;

 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;

 lagg_proto_stop(sc);
}
