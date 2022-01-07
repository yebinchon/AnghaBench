
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct rl_softc {scalar_t__ suspended; int rl_dev; struct ifnet* rl_ifp; } ;
struct ifnet {int if_capabilities; int if_flags; } ;
typedef int device_t ;


 int IFCAP_WOL ;
 int IFF_UP ;
 int PCIM_PSTAT_PMEENABLE ;
 scalar_t__ PCIR_POWER_STATUS ;
 int PCIY_PMG ;
 int RL_LOCK (struct rl_softc*) ;
 int RL_UNLOCK (struct rl_softc*) ;
 struct rl_softc* device_get_softc (int ) ;
 scalar_t__ pci_find_cap (int ,int ,int*) ;
 int pci_read_config (int ,scalar_t__,int) ;
 int pci_write_config (int ,scalar_t__,int,int) ;
 int rl_clrwol (struct rl_softc*) ;
 int rl_init_locked (struct rl_softc*) ;

__attribute__((used)) static int
rl_resume(device_t dev)
{
 struct rl_softc *sc;
 struct ifnet *ifp;
 int pmc;
 uint16_t pmstat;

 sc = device_get_softc(dev);
 ifp = sc->rl_ifp;

 RL_LOCK(sc);

 if ((ifp->if_capabilities & IFCAP_WOL) != 0 &&
     pci_find_cap(sc->rl_dev, PCIY_PMG, &pmc) == 0) {

  pmstat = pci_read_config(sc->rl_dev,
      pmc + PCIR_POWER_STATUS, 2);
  if ((pmstat & PCIM_PSTAT_PMEENABLE) != 0) {
   pmstat &= ~PCIM_PSTAT_PMEENABLE;
   pci_write_config(sc->rl_dev,
       pmc + PCIR_POWER_STATUS, pmstat, 2);
  }




  rl_clrwol(sc);
 }


 if (ifp->if_flags & IFF_UP)
  rl_init_locked(sc);

 sc->suspended = 0;

 RL_UNLOCK(sc);

 return (0);
}
