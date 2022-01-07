
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_softc {struct ifnet* sge_ifp; } ;
struct ifnet {int if_drv_flags; } ;
typedef int device_t ;


 int IFF_DRV_RUNNING ;
 int SGE_LOCK (struct sge_softc*) ;
 int SGE_UNLOCK (struct sge_softc*) ;
 struct sge_softc* device_get_softc (int ) ;
 int sge_stop (struct sge_softc*) ;

__attribute__((used)) static int
sge_suspend(device_t dev)
{
 struct sge_softc *sc;
 struct ifnet *ifp;

 sc = device_get_softc(dev);
 SGE_LOCK(sc);
 ifp = sc->sge_ifp;
 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
  sge_stop(sc);
 SGE_UNLOCK(sc);
 return (0);
}
