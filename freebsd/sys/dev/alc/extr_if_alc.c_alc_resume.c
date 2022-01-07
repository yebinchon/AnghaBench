
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ifnet {int if_flags; int if_drv_flags; } ;
struct alc_softc {int alc_flags; struct ifnet* alc_ifp; scalar_t__ alc_pmcap; int alc_dev; } ;
typedef int device_t ;


 int ALC_FLAG_PM ;
 int ALC_LOCK (struct alc_softc*) ;
 int ALC_UNLOCK (struct alc_softc*) ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 int PCIM_PSTAT_PMEENABLE ;
 scalar_t__ PCIR_POWER_STATUS ;
 int alc_init_locked (struct alc_softc*) ;
 int alc_phy_reset (struct alc_softc*) ;
 struct alc_softc* device_get_softc (int ) ;
 int pci_read_config (int ,scalar_t__,int) ;
 int pci_write_config (int ,scalar_t__,int,int) ;

__attribute__((used)) static int
alc_resume(device_t dev)
{
 struct alc_softc *sc;
 struct ifnet *ifp;
 uint16_t pmstat;

 sc = device_get_softc(dev);

 ALC_LOCK(sc);
 if ((sc->alc_flags & ALC_FLAG_PM) != 0) {

  pmstat = pci_read_config(sc->alc_dev,
      sc->alc_pmcap + PCIR_POWER_STATUS, 2);
  if ((pmstat & PCIM_PSTAT_PMEENABLE) != 0) {
   pmstat &= ~PCIM_PSTAT_PMEENABLE;
   pci_write_config(sc->alc_dev,
       sc->alc_pmcap + PCIR_POWER_STATUS, pmstat, 2);
  }
 }

 alc_phy_reset(sc);
 ifp = sc->alc_ifp;
 if ((ifp->if_flags & IFF_UP) != 0) {
  ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
  alc_init_locked(sc);
 }
 ALC_UNLOCK(sc);

 return (0);
}
