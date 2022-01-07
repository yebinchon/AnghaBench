
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_pci_softc {int num_slots; } ;
typedef int device_t ;


 int DELAY (int) ;
 int ENXIO ;
 int LC_CKDRVHZ ;
 int LC_CKDRVOHZ ;
 int LC_CKDRVPD ;
 int MT7620_PERST ;
 int MT7620_PERST_GPIO_MODE ;
 int MT7620_PKG_BGA ;
 int MT7620_PPLL_CFG0 ;
 int MT7620_PPLL_CFG1 ;
 int MT7620_PPLL_DRV ;
 int MTK_PCI_PCICFG ;
 int MTK_PCI_RESET ;
 int MT_CLR_SET32 (struct mtk_pci_softc*,int ,int ,int ) ;
 int PDRV_SW_SET ;
 int PPLL_LOCKED ;
 int PPLL_PD ;
 int PPLL_SW_SET ;
 int SYSCTL_GPIOMODE ;
 int SYSCTL_REVID ;
 struct mtk_pci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ mtk_pcie_phy_mt7620_set (struct mtk_pci_softc*,int,int) ;
 scalar_t__ mtk_pcie_phy_start (int ) ;
 scalar_t__ mtk_pcie_phy_stop (int ) ;
 int mtk_sysctl_clr_set (int ,int,int) ;
 int mtk_sysctl_get (int ) ;

__attribute__((used)) static int
mtk_pcie_phy_mt7620_init(device_t dev)
{
 struct mtk_pci_softc *sc = device_get_softc(dev);





 if (mtk_pcie_phy_mt7620_set(sc, 0x00, 0x80) ||
     mtk_pcie_phy_mt7620_set(sc, 0x01, 0x04) ||
     mtk_pcie_phy_mt7620_set(sc, 0x68, 0x84))
  return (ENXIO);


 if (mtk_pcie_phy_stop(dev))
  return (ENXIO);


 mtk_sysctl_clr_set(MT7620_PPLL_DRV, LC_CKDRVPD, PDRV_SW_SET);


 if (!(mtk_sysctl_get(SYSCTL_REVID) & MT7620_PKG_BGA)) {
  device_printf(dev, "PCIe disabled for MT7620N\n");
  mtk_sysctl_clr_set(MT7620_PPLL_CFG0, 0, PPLL_SW_SET);
  mtk_sysctl_clr_set(MT7620_PPLL_CFG1, 0, PPLL_PD);
  return (ENXIO);
 }


 mtk_sysctl_clr_set(SYSCTL_GPIOMODE, MT7620_PERST_GPIO_MODE,
     MT7620_PERST);


 if (mtk_pcie_phy_start(dev))
  return (ENXIO);


 DELAY(100000);


 if (!(mtk_sysctl_get(MT7620_PPLL_CFG1) & PPLL_LOCKED)) {
  device_printf(dev, "no PPLL not lock\n");
  mtk_pcie_phy_stop(dev);
  return (ENXIO);
 }


 mtk_sysctl_clr_set(MT7620_PPLL_DRV, LC_CKDRVOHZ | LC_CKDRVHZ,
     LC_CKDRVPD | PDRV_SW_SET);


 DELAY(100000);


 MT_CLR_SET32(sc, MTK_PCI_PCICFG, MTK_PCI_RESET, 0);


 sc->num_slots = 1;

 return (0);
}
