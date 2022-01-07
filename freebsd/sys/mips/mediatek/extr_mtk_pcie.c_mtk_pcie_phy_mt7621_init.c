
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_pci_softc {int num_slots; } ;
typedef int device_t ;


 int DELAY (int) ;
 int ENXIO ;
 int MT7621_GPIO_CTRL0 ;
 int MT7621_GPIO_DATA0 ;
 int MT7621_PCIE_RST ;
 int MT7621_PERST_GPIO ;
 int MT7621_PERST_GPIO_MODE ;
 int MT7621_UARTL3_GPIO ;
 int MT7621_UARTL3_GPIO_MODE ;
 int SYSCTL_GPIOMODE ;
 int SYSCTL_MT7621_REV_E ;
 int SYSCTL_REVID ;
 int SYSCTL_REVID_MASK ;
 struct mtk_pci_softc* device_get_softc (int ) ;
 int mtk_gpio_clr_set (int ,int ,int ) ;
 int mtk_pcie_phy_mt7621_bypass_pipe_rst (struct mtk_pci_softc*,int) ;
 int mtk_pcie_phy_mt7621_setup_ssc (struct mtk_pci_softc*,int) ;
 scalar_t__ mtk_pcie_phy_start (int ) ;
 scalar_t__ mtk_pcie_phy_stop (int ) ;
 int mtk_sysctl_clr_set (int ,int,int) ;
 int mtk_sysctl_get (int ) ;

__attribute__((used)) static int
mtk_pcie_phy_mt7621_init(device_t dev)
{
 struct mtk_pci_softc *sc = device_get_softc(dev);


 if (mtk_pcie_phy_stop(dev))
  return (ENXIO);


 mtk_sysctl_clr_set(SYSCTL_GPIOMODE, MT7621_PERST_GPIO_MODE |
     MT7621_UARTL3_GPIO_MODE, MT7621_PERST_GPIO | MT7621_UARTL3_GPIO);


 mtk_gpio_clr_set(MT7621_GPIO_CTRL0, 0, MT7621_PCIE_RST);


 mtk_gpio_clr_set(MT7621_GPIO_DATA0, MT7621_PCIE_RST, 0);


 DELAY(100000);


 if (mtk_pcie_phy_start(dev))
  return (ENXIO);


 DELAY(100000);


 if ((mtk_sysctl_get(SYSCTL_REVID) & SYSCTL_REVID_MASK) ==
     SYSCTL_MT7621_REV_E)
  mtk_pcie_phy_mt7621_bypass_pipe_rst(sc, 0x9000);


 mtk_pcie_phy_mt7621_setup_ssc(sc, 0x9000);

 mtk_pcie_phy_mt7621_setup_ssc(sc, 0xa000);


 mtk_gpio_clr_set(MT7621_GPIO_DATA0, 0, MT7621_PCIE_RST);


 sc->num_slots = 3;


 DELAY(100000);

 return (0);
}
