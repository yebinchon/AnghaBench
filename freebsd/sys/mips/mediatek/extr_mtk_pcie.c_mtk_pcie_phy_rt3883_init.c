
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_pci_softc {int num_slots; } ;
typedef int device_t ;


 int DELAY (int) ;
 int ENXIO ;
 int MTK_PCI_ARBCTL ;
 int MTK_PCI_PCICFG ;
 int MT_WRITE32 (struct mtk_pci_softc*,int ,int) ;
 int RT3883_PCIE_RC_MODE ;
 int RT3883_PCI_CLK ;
 int RT3883_PCI_HOST_MODE ;
 int RT3883_PCI_RST ;
 int SYSCTL_CLKCFG1 ;
 int SYSCTL_RSTCTRL ;
 int SYSCTL_SYSCFG1 ;
 struct mtk_pci_softc* device_get_softc (int ) ;
 scalar_t__ mtk_pcie_phy_start (int ) ;
 int mtk_sysctl_clr_set (int ,int ,int) ;

__attribute__((used)) static int
mtk_pcie_phy_rt3883_init(device_t dev)
{
 struct mtk_pci_softc *sc = device_get_softc(dev);


 mtk_sysctl_clr_set(SYSCTL_SYSCFG1, 0, RT3883_PCI_HOST_MODE |
     RT3883_PCIE_RC_MODE);


 if (mtk_pcie_phy_start(dev))
  return (ENXIO);


 mtk_sysctl_clr_set(SYSCTL_RSTCTRL, 0, RT3883_PCI_RST);
 mtk_sysctl_clr_set(SYSCTL_CLKCFG1, RT3883_PCI_CLK, 0);


 DELAY(500000);


 MT_WRITE32(sc, MTK_PCI_PCICFG, 0);


 MT_WRITE32(sc, MTK_PCI_ARBCTL, 0x79);


 sc->num_slots = 1;

 return (0);
}
