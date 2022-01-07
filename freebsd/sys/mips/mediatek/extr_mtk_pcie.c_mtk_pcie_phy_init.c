
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_pci_softc {int socid; scalar_t__ num_slots; } ;
typedef int device_t ;


 int ENXIO ;






 struct mtk_pci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int mtk_pcie_phy_mt7620_init (int ) ;
 int mtk_pcie_phy_mt7621_init (int ) ;
 int mtk_pcie_phy_mt7628_init (int ) ;
 int mtk_pcie_phy_rt3883_init (int ) ;
 int mtk_pcie_phy_setup_slots (int ) ;

__attribute__((used)) static int
mtk_pcie_phy_init(device_t dev)
{
 struct mtk_pci_softc *sc;


 sc = device_get_softc(dev);


 sc->num_slots = 0;


 switch (sc->socid) {
 case 131:
 case 130:
  if (mtk_pcie_phy_mt7628_init(dev))
   return (ENXIO);
  break;
 case 132:
  if (mtk_pcie_phy_mt7621_init(dev))
   return (ENXIO);
  break;
 case 133:
  if (mtk_pcie_phy_mt7620_init(dev))
   return (ENXIO);
  break;
 case 129:
 case 128:
  if (mtk_pcie_phy_rt3883_init(dev))
   return (ENXIO);
  break;
 default:
  device_printf(dev, "unsupported device %x\n", sc->socid);
  return (ENXIO);
 }





 mtk_pcie_phy_setup_slots(dev);

 return (0);
}
