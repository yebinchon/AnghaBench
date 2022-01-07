
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct vge_softc {int vge_flags; scalar_t__ vge_pmcap; int vge_dev; struct ifnet* vge_ifp; int vge_phyaddr; } ;
struct ifnet {int if_capenable; } ;


 int BMCR_PDOWN ;
 int CSR_CLRBIT_1 (struct vge_softc*,int ,int ) ;
 int CSR_READ_1 (struct vge_softc*,int ) ;
 int CSR_SETBIT_1 (struct vge_softc*,int ,int) ;
 int CSR_WRITE_1 (struct vge_softc*,int ,int) ;
 int IFCAP_WOL ;
 int IFCAP_WOL_MAGIC ;
 int IFCAP_WOL_MCAST ;
 int IFCAP_WOL_UCAST ;
 int MII_BMCR ;
 int PCIM_PSTAT_PME ;
 int PCIM_PSTAT_PMEENABLE ;
 scalar_t__ PCIR_POWER_STATUS ;
 int VGE_DIAGCTL ;
 int VGE_DIAGCTL_FDXFORCE ;
 int VGE_DIAGCTL_GMII ;
 int VGE_DIAGCTL_MACFORCE ;
 int VGE_FLAG_PMCAP ;
 int VGE_LOCK_ASSERT (struct vge_softc*) ;
 int VGE_PWRSTAT ;
 int VGE_STICKHW_DS0 ;
 int VGE_STICKHW_DS1 ;
 int VGE_STICKHW_SWPTAG ;
 int VGE_WOLCFGC ;
 int VGE_WOLCFGS ;
 int VGE_WOLCFG_PMEOVR ;
 int VGE_WOLCFG_SAB ;
 int VGE_WOLCFG_SAM ;
 int VGE_WOLCR0C ;
 int VGE_WOLCR0_PATTERN_ALL ;
 int VGE_WOLCR1C ;
 int VGE_WOLCR1S ;
 int VGE_WOLCR1_MAGIC ;
 int VGE_WOLCR1_UCAST ;
 int VGE_WOLSR0C ;
 int VGE_WOLSR1C ;
 int pci_read_config (int ,scalar_t__,int) ;
 int pci_write_config (int ,scalar_t__,int,int) ;
 int vge_miibus_writereg (int ,int ,int ,int ) ;
 int vge_miipoll_stop (struct vge_softc*) ;
 int vge_setlinkspeed (struct vge_softc*) ;

__attribute__((used)) static void
vge_setwol(struct vge_softc *sc)
{
 struct ifnet *ifp;
 uint16_t pmstat;
 uint8_t val;

 VGE_LOCK_ASSERT(sc);

 if ((sc->vge_flags & VGE_FLAG_PMCAP) == 0) {

  vge_miibus_writereg(sc->vge_dev, sc->vge_phyaddr, MII_BMCR,
      BMCR_PDOWN);
  vge_miipoll_stop(sc);
  return;
 }

 ifp = sc->vge_ifp;


 CSR_WRITE_1(sc, VGE_WOLCR0C, VGE_WOLCR0_PATTERN_ALL);

 CSR_WRITE_1(sc, VGE_WOLCR1C, 0x0F);
 CSR_WRITE_1(sc, VGE_WOLCFGC, VGE_WOLCFG_SAB | VGE_WOLCFG_SAM |
     VGE_WOLCFG_PMEOVR);
 if ((ifp->if_capenable & IFCAP_WOL) != 0) {
  vge_setlinkspeed(sc);
  val = 0;
  if ((ifp->if_capenable & IFCAP_WOL_UCAST) != 0)
   val |= VGE_WOLCR1_UCAST;
  if ((ifp->if_capenable & IFCAP_WOL_MAGIC) != 0)
   val |= VGE_WOLCR1_MAGIC;
  CSR_WRITE_1(sc, VGE_WOLCR1S, val);
  val = 0;
  if ((ifp->if_capenable & IFCAP_WOL_MCAST) != 0)
   val |= VGE_WOLCFG_SAM | VGE_WOLCFG_SAB;
  CSR_WRITE_1(sc, VGE_WOLCFGS, val | VGE_WOLCFG_PMEOVR);

  vge_miipoll_stop(sc);
 }
 CSR_SETBIT_1(sc, VGE_DIAGCTL,
     VGE_DIAGCTL_MACFORCE | VGE_DIAGCTL_FDXFORCE);
 CSR_CLRBIT_1(sc, VGE_DIAGCTL, VGE_DIAGCTL_GMII);


 CSR_WRITE_1(sc, VGE_WOLSR0C, 0xFF);
 CSR_WRITE_1(sc, VGE_WOLSR1C, 0xFF);

 val = CSR_READ_1(sc, VGE_PWRSTAT);
 val |= VGE_STICKHW_SWPTAG;
 CSR_WRITE_1(sc, VGE_PWRSTAT, val);

 val = CSR_READ_1(sc, VGE_PWRSTAT);
 val |= VGE_STICKHW_DS0 | VGE_STICKHW_DS1;
 CSR_WRITE_1(sc, VGE_PWRSTAT, val);

 pmstat = pci_read_config(sc->vge_dev, sc->vge_pmcap +
     PCIR_POWER_STATUS, 2);
 pmstat &= ~(PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE);
 if ((ifp->if_capenable & IFCAP_WOL) != 0)
  pmstat |= PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE;
 pci_write_config(sc->vge_dev, sc->vge_pmcap + PCIR_POWER_STATUS,
     pmstat, 2);
}
