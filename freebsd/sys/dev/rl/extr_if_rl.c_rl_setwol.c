
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct rl_softc {int rl_dev; int rl_cfg5; int rl_cfg3; int rl_cfg1; struct ifnet* rl_ifp; } ;
struct ifnet {int if_capabilities; int if_capenable; } ;


 int CSR_READ_1 (struct rl_softc*,int ) ;
 int CSR_WRITE_1 (struct rl_softc*,int ,int) ;
 int IFCAP_WOL ;
 int IFCAP_WOL_MAGIC ;
 int IFCAP_WOL_MCAST ;
 int IFCAP_WOL_UCAST ;
 int PCIM_PSTAT_PME ;
 int PCIM_PSTAT_PMEENABLE ;
 scalar_t__ PCIR_POWER_STATUS ;
 int PCIY_PMG ;
 int RL_CFG1_PME ;
 int RL_CFG3_WOL_LINK ;
 int RL_CFG3_WOL_MAGIC ;
 int RL_CFG5_WOL_BCAST ;
 int RL_CFG5_WOL_LANWAKE ;
 int RL_CFG5_WOL_MCAST ;
 int RL_CFG5_WOL_UCAST ;
 int RL_EECMD ;
 int RL_EEMODE_OFF ;
 int RL_EE_MODE ;
 int RL_LOCK_ASSERT (struct rl_softc*) ;
 scalar_t__ pci_find_cap (int ,int ,int*) ;
 int pci_read_config (int ,scalar_t__,int) ;
 int pci_write_config (int ,scalar_t__,int,int) ;

__attribute__((used)) static void
rl_setwol(struct rl_softc *sc)
{
 struct ifnet *ifp;
 int pmc;
 uint16_t pmstat;
 uint8_t v;

 RL_LOCK_ASSERT(sc);

 ifp = sc->rl_ifp;
 if ((ifp->if_capabilities & IFCAP_WOL) == 0)
  return;
 if (pci_find_cap(sc->rl_dev, PCIY_PMG, &pmc) != 0)
  return;


 CSR_WRITE_1(sc, RL_EECMD, RL_EE_MODE);


 v = CSR_READ_1(sc, sc->rl_cfg1);
 v &= ~RL_CFG1_PME;
 if ((ifp->if_capenable & IFCAP_WOL) != 0)
  v |= RL_CFG1_PME;
 CSR_WRITE_1(sc, sc->rl_cfg1, v);

 v = CSR_READ_1(sc, sc->rl_cfg3);
 v &= ~(RL_CFG3_WOL_LINK | RL_CFG3_WOL_MAGIC);
 if ((ifp->if_capenable & IFCAP_WOL_MAGIC) != 0)
  v |= RL_CFG3_WOL_MAGIC;
 CSR_WRITE_1(sc, sc->rl_cfg3, v);

 v = CSR_READ_1(sc, sc->rl_cfg5);
 v &= ~(RL_CFG5_WOL_BCAST | RL_CFG5_WOL_MCAST | RL_CFG5_WOL_UCAST);
 v &= ~RL_CFG5_WOL_LANWAKE;
 if ((ifp->if_capenable & IFCAP_WOL_UCAST) != 0)
  v |= RL_CFG5_WOL_UCAST;
 if ((ifp->if_capenable & IFCAP_WOL_MCAST) != 0)
  v |= RL_CFG5_WOL_MCAST | RL_CFG5_WOL_BCAST;
 if ((ifp->if_capenable & IFCAP_WOL) != 0)
  v |= RL_CFG5_WOL_LANWAKE;
 CSR_WRITE_1(sc, sc->rl_cfg5, v);


 CSR_WRITE_1(sc, RL_EECMD, RL_EEMODE_OFF);


 pmstat = pci_read_config(sc->rl_dev, pmc + PCIR_POWER_STATUS, 2);
 pmstat &= ~(PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE);
 if ((ifp->if_capenable & IFCAP_WOL) != 0)
  pmstat |= PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE;
 pci_write_config(sc->rl_dev, pmc + PCIR_POWER_STATUS, pmstat, 2);
}
