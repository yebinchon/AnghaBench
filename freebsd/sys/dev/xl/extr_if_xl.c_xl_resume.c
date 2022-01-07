
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xl_softc {struct ifnet* xl_ifp; } ;
struct ifnet {int if_flags; int if_drv_flags; } ;
typedef int device_t ;


 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 int XL_LOCK (struct xl_softc*) ;
 int XL_UNLOCK (struct xl_softc*) ;
 struct xl_softc* device_get_softc (int ) ;
 int xl_init_locked (struct xl_softc*) ;

__attribute__((used)) static int
xl_resume(device_t dev)
{
 struct xl_softc *sc;
 struct ifnet *ifp;

 sc = device_get_softc(dev);
 ifp = sc->xl_ifp;

 XL_LOCK(sc);

 if (ifp->if_flags & IFF_UP) {
  ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
  xl_init_locked(sc);
 }

 XL_UNLOCK(sc);

 return (0);
}
