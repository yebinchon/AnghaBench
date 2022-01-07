
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct vge_softc {int vge_flags; struct ifnet* vge_ifp; scalar_t__ vge_pmcap; int vge_dev; } ;
struct ifnet {int if_flags; int if_drv_flags; } ;
typedef int device_t ;


 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 int PCIM_PSTAT_PMEENABLE ;
 scalar_t__ PCIR_POWER_STATUS ;
 int VGE_FLAG_PMCAP ;
 int VGE_FLAG_SUSPENDED ;
 int VGE_LOCK (struct vge_softc*) ;
 int VGE_UNLOCK (struct vge_softc*) ;
 struct vge_softc* device_get_softc (int ) ;
 int pci_read_config (int ,scalar_t__,int) ;
 int pci_write_config (int ,scalar_t__,int,int) ;
 int vge_clrwol (struct vge_softc*) ;
 int vge_init_locked (struct vge_softc*) ;
 int vge_miipoll_start (struct vge_softc*) ;

__attribute__((used)) static int
vge_resume(device_t dev)
{
 struct vge_softc *sc;
 struct ifnet *ifp;
 uint16_t pmstat;

 sc = device_get_softc(dev);
 VGE_LOCK(sc);
 if ((sc->vge_flags & VGE_FLAG_PMCAP) != 0) {

  pmstat = pci_read_config(sc->vge_dev,
      sc->vge_pmcap + PCIR_POWER_STATUS, 2);
  if ((pmstat & PCIM_PSTAT_PMEENABLE) != 0) {
   pmstat &= ~PCIM_PSTAT_PMEENABLE;
   pci_write_config(sc->vge_dev,
       sc->vge_pmcap + PCIR_POWER_STATUS, pmstat, 2);
  }
 }
 vge_clrwol(sc);

 vge_miipoll_start(sc);
 ifp = sc->vge_ifp;

 if ((ifp->if_flags & IFF_UP) != 0) {
  ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
  vge_init_locked(sc);
 }
 sc->vge_flags &= ~VGE_FLAG_SUSPENDED;
 VGE_UNLOCK(sc);

 return (0);
}
