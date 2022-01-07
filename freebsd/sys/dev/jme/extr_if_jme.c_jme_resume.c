
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct jme_softc {struct ifnet* jme_ifp; int jme_dev; } ;
struct ifnet {int if_flags; int if_drv_flags; } ;
typedef int device_t ;


 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 int JME_LOCK (struct jme_softc*) ;
 int JME_UNLOCK (struct jme_softc*) ;
 int PCIM_PSTAT_PMEENABLE ;
 scalar_t__ PCIR_POWER_STATUS ;
 int PCIY_PMG ;
 struct jme_softc* device_get_softc (int ) ;
 int jme_init_locked (struct jme_softc*) ;
 int jme_phy_up (struct jme_softc*) ;
 scalar_t__ pci_find_cap (int ,int ,int*) ;
 int pci_read_config (int ,scalar_t__,int) ;
 int pci_write_config (int ,scalar_t__,int ,int) ;

__attribute__((used)) static int
jme_resume(device_t dev)
{
 struct jme_softc *sc;
 struct ifnet *ifp;
 uint16_t pmstat;
 int pmc;

 sc = device_get_softc(dev);

 JME_LOCK(sc);
 if (pci_find_cap(sc->jme_dev, PCIY_PMG, &pmc) == 0) {
  pmstat = pci_read_config(sc->jme_dev,
      pmc + PCIR_POWER_STATUS, 2);

  pmstat &= ~PCIM_PSTAT_PMEENABLE;
  pci_write_config(sc->jme_dev,
      pmc + PCIR_POWER_STATUS, pmstat, 2);
 }

 jme_phy_up(sc);
 ifp = sc->jme_ifp;
 if ((ifp->if_flags & IFF_UP) != 0) {
  ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
  jme_init_locked(sc);
 }

 JME_UNLOCK(sc);

 return (0);
}
