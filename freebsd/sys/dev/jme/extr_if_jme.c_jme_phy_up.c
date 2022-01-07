
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct jme_softc {int jme_dev; int jme_chip_rev; int jme_phyaddr; } ;


 int BMCR_PDOWN ;
 int CHIPMODE_REVFM (int ) ;
 int CSR_READ_4 (struct jme_softc*,int ) ;
 int CSR_WRITE_4 (struct jme_softc*,int ,int) ;
 int JME_PCI_PE1 ;
 int JME_PHYPOWDN ;
 int MII_BMCR ;
 int PE1_GIGA_PDOWN_DIS ;
 int PE1_GIGA_PDOWN_MASK ;
 int jme_miibus_readreg (int ,int ,int ) ;
 int jme_miibus_writereg (int ,int ,int ,int ) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static void
jme_phy_up(struct jme_softc *sc)
{
 uint32_t reg;
 uint16_t bmcr;

 bmcr = jme_miibus_readreg(sc->jme_dev, sc->jme_phyaddr, MII_BMCR);
 bmcr &= ~BMCR_PDOWN;
 jme_miibus_writereg(sc->jme_dev, sc->jme_phyaddr, MII_BMCR, bmcr);
 if (CHIPMODE_REVFM(sc->jme_chip_rev) >= 5) {
  reg = CSR_READ_4(sc, JME_PHYPOWDN);
  reg &= ~0x0000000F;
  CSR_WRITE_4(sc, JME_PHYPOWDN, reg);
  reg = pci_read_config(sc->jme_dev, JME_PCI_PE1, 4);
  reg &= ~PE1_GIGA_PDOWN_MASK;
  reg |= PE1_GIGA_PDOWN_DIS;
  pci_write_config(sc->jme_dev, JME_PCI_PE1, reg, 4);
 }
}
