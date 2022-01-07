
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_flags; } ;
struct dc_softc {scalar_t__ suspended; struct ifnet* dc_ifp; } ;
typedef int device_t ;


 int DC_LOCK (struct dc_softc*) ;
 int DC_UNLOCK (struct dc_softc*) ;
 int IFF_UP ;
 int dc_init_locked (struct dc_softc*) ;
 struct dc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
dc_resume(device_t dev)
{
 struct dc_softc *sc;
 struct ifnet *ifp;

 sc = device_get_softc(dev);
 ifp = sc->dc_ifp;


 DC_LOCK(sc);
 if (ifp->if_flags & IFF_UP)
  dc_init_locked(sc);

 sc->suspended = 0;
 DC_UNLOCK(sc);

 return (0);
}
