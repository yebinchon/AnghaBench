
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct jme_softc {int jme_flags; int jme_dev; struct ifnet* jme_ifp; } ;
struct ifnet {int if_capenable; } ;


 int CSR_READ_4 (struct jme_softc*,int ) ;
 int CSR_WRITE_4 (struct jme_softc*,int ,int) ;
 int GHC_TX_MAC_CLK_100 ;
 int GHC_TX_MAC_CLK_1000 ;
 int GHC_TX_OFFLD_CLK_100 ;
 int GHC_TX_OFFLD_CLK_1000 ;
 int GPREG0_PME_ENB ;
 int GPREG1_RX_MAC_CLK_DIS ;
 int IFCAP_WOL ;
 int IFCAP_WOL_MAGIC ;
 int JME_FLAG_FASTETH ;
 int JME_FLAG_RXCLK ;
 int JME_FLAG_TXCLK ;
 int JME_GHC ;
 int JME_GPREG0 ;
 int JME_GPREG1 ;
 int JME_LOCK_ASSERT (struct jme_softc*) ;
 int JME_PMCS ;
 int PCIM_PSTAT_PME ;
 int PCIM_PSTAT_PMEENABLE ;
 scalar_t__ PCIR_POWER_STATUS ;
 int PCIY_PMG ;
 int PMCS_MAGIC_FRAME ;
 int PMCS_MAGIC_FRAME_ENB ;
 int PMCS_WOL_ENB_MASK ;
 int jme_phy_down (struct jme_softc*) ;
 int jme_setlinkspeed (struct jme_softc*) ;
 scalar_t__ pci_find_cap (int ,int ,int*) ;
 int pci_read_config (int ,scalar_t__,int) ;
 int pci_write_config (int ,scalar_t__,int,int) ;

__attribute__((used)) static void
jme_setwol(struct jme_softc *sc)
{
 struct ifnet *ifp;
 uint32_t gpr, pmcs;
 uint16_t pmstat;
 int pmc;

 JME_LOCK_ASSERT(sc);

 if (pci_find_cap(sc->jme_dev, PCIY_PMG, &pmc) != 0) {

  if ((sc->jme_flags & JME_FLAG_TXCLK) != 0)
   CSR_WRITE_4(sc, JME_GHC, CSR_READ_4(sc, JME_GHC) &
       ~(GHC_TX_OFFLD_CLK_100 | GHC_TX_MAC_CLK_100 |
       GHC_TX_OFFLD_CLK_1000 | GHC_TX_MAC_CLK_1000));
  if ((sc->jme_flags & JME_FLAG_RXCLK) != 0)
   CSR_WRITE_4(sc, JME_GPREG1,
       CSR_READ_4(sc, JME_GPREG1) | GPREG1_RX_MAC_CLK_DIS);

  jme_phy_down(sc);
  return;
 }

 ifp = sc->jme_ifp;
 gpr = CSR_READ_4(sc, JME_GPREG0) & ~GPREG0_PME_ENB;
 pmcs = CSR_READ_4(sc, JME_PMCS);
 pmcs &= ~PMCS_WOL_ENB_MASK;
 if ((ifp->if_capenable & IFCAP_WOL_MAGIC) != 0) {
  pmcs |= PMCS_MAGIC_FRAME | PMCS_MAGIC_FRAME_ENB;

  gpr |= GPREG0_PME_ENB;

  if ((sc->jme_flags & JME_FLAG_FASTETH) == 0)
   jme_setlinkspeed(sc);
 }

 CSR_WRITE_4(sc, JME_PMCS, pmcs);
 CSR_WRITE_4(sc, JME_GPREG0, gpr);

 if ((sc->jme_flags & JME_FLAG_TXCLK) != 0)
  CSR_WRITE_4(sc, JME_GHC, CSR_READ_4(sc, JME_GHC) &
      ~(GHC_TX_OFFLD_CLK_100 | GHC_TX_MAC_CLK_100 |
      GHC_TX_OFFLD_CLK_1000 | GHC_TX_MAC_CLK_1000));

 pmstat = pci_read_config(sc->jme_dev, pmc + PCIR_POWER_STATUS, 2);
 pmstat &= ~(PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE);
 if ((ifp->if_capenable & IFCAP_WOL) != 0)
  pmstat |= PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE;
 pci_write_config(sc->jme_dev, pmc + PCIR_POWER_STATUS, pmstat, 2);
 if ((ifp->if_capenable & IFCAP_WOL) == 0) {

  jme_phy_down(sc);
 }
}
