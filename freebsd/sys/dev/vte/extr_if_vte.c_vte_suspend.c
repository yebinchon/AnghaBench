
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vte_softc {struct ifnet* vte_ifp; } ;
struct ifnet {int if_drv_flags; } ;
typedef int device_t ;


 int IFF_DRV_RUNNING ;
 int VTE_LOCK (struct vte_softc*) ;
 int VTE_UNLOCK (struct vte_softc*) ;
 struct vte_softc* device_get_softc (int ) ;
 int vte_stop (struct vte_softc*) ;

__attribute__((used)) static int
vte_suspend(device_t dev)
{
 struct vte_softc *sc;
 struct ifnet *ifp;

 sc = device_get_softc(dev);

 VTE_LOCK(sc);
 ifp = sc->vte_ifp;
 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
  vte_stop(sc);
 VTE_UNLOCK(sc);

 return (0);
}
