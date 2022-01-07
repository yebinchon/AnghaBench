
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_pci_softc {int num_slots; } ;
typedef int device_t ;


 int DELAY (int) ;
 int ENXIO ;
 int MT7628_PERST ;
 int MT7628_PERST_GPIO_MODE ;
 int MTK_PCI_PCICFG ;
 int MTK_PCI_RESET ;
 int MT_CLR_SET32 (struct mtk_pci_softc*,int ,int ,int ) ;
 int SYSCTL_GPIOMODE ;
 struct mtk_pci_softc* device_get_softc (int ) ;
 int mtk_pcie_phy_mt7628_setup (struct mtk_pci_softc*,int) ;
 scalar_t__ mtk_pcie_phy_start (int ) ;
 int mtk_sysctl_clr_set (int ,int ,int ) ;

__attribute__((used)) static int
mtk_pcie_phy_mt7628_init(device_t dev)
{
 struct mtk_pci_softc *sc = device_get_softc(dev);


 mtk_sysctl_clr_set(SYSCTL_GPIOMODE, MT7628_PERST_GPIO_MODE,
     MT7628_PERST);


 if (mtk_pcie_phy_start(dev))
  return (ENXIO);


 DELAY(100000);


 mtk_pcie_phy_mt7628_setup(sc, 0x9000);


 MT_CLR_SET32(sc, MTK_PCI_PCICFG, MTK_PCI_RESET, 0);


 sc->num_slots = 1;

 return (0);
}
