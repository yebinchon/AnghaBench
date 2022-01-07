
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis_softc {struct ifnet* sis_ifp; } ;
struct ifnet {int if_flags; int if_drv_flags; } ;
typedef int device_t ;


 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 int SIS_LOCK (struct sis_softc*) ;
 int SIS_UNLOCK (struct sis_softc*) ;
 struct sis_softc* device_get_softc (int ) ;
 int sis_initl (struct sis_softc*) ;

__attribute__((used)) static int
sis_resume(device_t dev)
{
 struct sis_softc *sc;
 struct ifnet *ifp;

 sc = device_get_softc(dev);
 SIS_LOCK(sc);
 ifp = sc->sis_ifp;
 if ((ifp->if_flags & IFF_UP) != 0) {
  ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
  sis_initl(sc);
 }
 SIS_UNLOCK(sc);
 return (0);
}
