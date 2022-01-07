
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ifnet {int if_flags; int if_drv_flags; } ;
struct ale_softc {struct ifnet* ale_ifp; int ale_dev; } ;
typedef int device_t ;


 int ALE_LOCK (struct ale_softc*) ;
 int ALE_UNLOCK (struct ale_softc*) ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 int PCIM_PSTAT_PMEENABLE ;
 scalar_t__ PCIR_POWER_STATUS ;
 int PCIY_PMG ;
 int ale_init_locked (struct ale_softc*) ;
 int ale_phy_reset (struct ale_softc*) ;
 struct ale_softc* device_get_softc (int ) ;
 scalar_t__ pci_find_cap (int ,int ,int*) ;
 int pci_read_config (int ,scalar_t__,int) ;
 int pci_write_config (int ,scalar_t__,int,int) ;

__attribute__((used)) static int
ale_resume(device_t dev)
{
 struct ale_softc *sc;
 struct ifnet *ifp;
 int pmc;
 uint16_t pmstat;

 sc = device_get_softc(dev);

 ALE_LOCK(sc);
 if (pci_find_cap(sc->ale_dev, PCIY_PMG, &pmc) == 0) {

  pmstat = pci_read_config(sc->ale_dev,
      pmc + PCIR_POWER_STATUS, 2);
  if ((pmstat & PCIM_PSTAT_PMEENABLE) != 0) {
   pmstat &= ~PCIM_PSTAT_PMEENABLE;
   pci_write_config(sc->ale_dev,
       pmc + PCIR_POWER_STATUS, pmstat, 2);
  }
 }

 ale_phy_reset(sc);
 ifp = sc->ale_ifp;
 if ((ifp->if_flags & IFF_UP) != 0) {
  ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
  ale_init_locked(sc);
 }
 ALE_UNLOCK(sc);

 return (0);
}
