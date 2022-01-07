
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct nfe_softc {int nfe_flags; int nfe_dev; int nfe_ifp; } ;
typedef int if_t ;


 int IFCAP_WOL ;
 int IFCAP_WOL_MAGIC ;
 int NFE_LOCK_ASSERT (struct nfe_softc*) ;
 int NFE_PWR2_CTL ;
 int NFE_PWR2_GATE_CLOCKS ;
 int NFE_PWR_MGMT ;
 int NFE_READ (struct nfe_softc*,int ) ;
 int NFE_RX_CTL ;
 int NFE_RX_RING_ADDR_HI ;
 int NFE_RX_RING_ADDR_LO ;
 int NFE_RX_START ;
 int NFE_WOL_CTL ;
 int NFE_WOL_MAGIC ;
 int NFE_WRITE (struct nfe_softc*,int ,int) ;
 int PCIM_PSTAT_PME ;
 int PCIM_PSTAT_PMEENABLE ;
 scalar_t__ PCIR_POWER_STATUS ;
 int PCIY_PMG ;
 int if_getcapenable (int ) ;
 int nfe_set_linkspeed (struct nfe_softc*) ;
 scalar_t__ pci_find_cap (int ,int ,int*) ;
 int pci_read_config (int ,scalar_t__,int) ;
 int pci_write_config (int ,scalar_t__,int,int) ;

__attribute__((used)) static void
nfe_set_wol(struct nfe_softc *sc)
{
 if_t ifp;
 uint32_t wolctl;
 int pmc;
 uint16_t pmstat;

 NFE_LOCK_ASSERT(sc);

 if (pci_find_cap(sc->nfe_dev, PCIY_PMG, &pmc) != 0)
  return;
 ifp = sc->nfe_ifp;
 if ((if_getcapenable(ifp) & IFCAP_WOL_MAGIC) != 0)
  wolctl = NFE_WOL_MAGIC;
 else
  wolctl = 0;
 NFE_WRITE(sc, NFE_WOL_CTL, wolctl);
 if ((if_getcapenable(ifp) & IFCAP_WOL_MAGIC) != 0) {
  nfe_set_linkspeed(sc);
  if ((sc->nfe_flags & NFE_PWR_MGMT) != 0)
   NFE_WRITE(sc, NFE_PWR2_CTL,
       NFE_READ(sc, NFE_PWR2_CTL) & ~NFE_PWR2_GATE_CLOCKS);

  NFE_WRITE(sc, NFE_RX_RING_ADDR_HI, 0);
  NFE_WRITE(sc, NFE_RX_RING_ADDR_LO, 0);
  NFE_WRITE(sc, NFE_RX_CTL, NFE_READ(sc, NFE_RX_CTL) |
      NFE_RX_START);
 }

 pmstat = pci_read_config(sc->nfe_dev, pmc + PCIR_POWER_STATUS, 2);
 pmstat &= ~(PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE);
 if ((if_getcapenable(ifp) & IFCAP_WOL) != 0)
  pmstat |= PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE;
 pci_write_config(sc->nfe_dev, pmc + PCIR_POWER_STATUS, pmstat, 2);
}
