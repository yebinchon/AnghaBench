
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ste_softc {struct ifnet* ste_ifp; int ste_dev; } ;
struct ifnet {int if_flags; int if_drv_flags; } ;
typedef int device_t ;


 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 int PCIM_PSTAT_PMEENABLE ;
 scalar_t__ PCIR_POWER_STATUS ;
 int PCIY_PMG ;
 int STE_LOCK (struct ste_softc*) ;
 int STE_UNLOCK (struct ste_softc*) ;
 struct ste_softc* device_get_softc (int ) ;
 scalar_t__ pci_find_cap (int ,int ,int*) ;
 int pci_read_config (int ,scalar_t__,int) ;
 int pci_write_config (int ,scalar_t__,int,int) ;
 int ste_init_locked (struct ste_softc*) ;

__attribute__((used)) static int
ste_resume(device_t dev)
{
 struct ste_softc *sc;
 struct ifnet *ifp;
 int pmc;
 uint16_t pmstat;

 sc = device_get_softc(dev);
 STE_LOCK(sc);
 if (pci_find_cap(sc->ste_dev, PCIY_PMG, &pmc) == 0) {

  pmstat = pci_read_config(sc->ste_dev,
      pmc + PCIR_POWER_STATUS, 2);
  if ((pmstat & PCIM_PSTAT_PMEENABLE) != 0) {
   pmstat &= ~PCIM_PSTAT_PMEENABLE;
   pci_write_config(sc->ste_dev,
       pmc + PCIR_POWER_STATUS, pmstat, 2);
  }
 }
 ifp = sc->ste_ifp;
 if ((ifp->if_flags & IFF_UP) != 0) {
  ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
  ste_init_locked(sc);
 }
 STE_UNLOCK(sc);

 return (0);
}
