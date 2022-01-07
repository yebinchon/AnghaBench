
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_softc {int vtnet_flags; struct ifnet* vtnet_ifp; } ;
struct ifnet {int if_flags; } ;
typedef int device_t ;


 int IFF_UP ;
 int VTNET_CORE_LOCK (struct vtnet_softc*) ;
 int VTNET_CORE_UNLOCK (struct vtnet_softc*) ;
 int VTNET_FLAG_SUSPENDED ;
 struct vtnet_softc* device_get_softc (int ) ;
 int vtnet_init_locked (struct vtnet_softc*) ;

__attribute__((used)) static int
vtnet_resume(device_t dev)
{
 struct vtnet_softc *sc;
 struct ifnet *ifp;

 sc = device_get_softc(dev);
 ifp = sc->vtnet_ifp;

 VTNET_CORE_LOCK(sc);
 if (ifp->if_flags & IFF_UP)
  vtnet_init_locked(sc);
 sc->vtnet_flags &= ~VTNET_FLAG_SUSPENDED;
 VTNET_CORE_UNLOCK(sc);

 return (0);
}
