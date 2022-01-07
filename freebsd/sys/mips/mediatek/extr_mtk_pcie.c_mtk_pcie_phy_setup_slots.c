
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mtk_pci_softc {scalar_t__ socid; int pcie_link_status; int num_slots; } ;
typedef int device_t ;


 int DELAY (int) ;
 int MTK_PCIE_BAR0SETUP (int) ;
 int MTK_PCIE_BAR1SETUP (int) ;
 int MTK_PCIE_CLASS (int) ;
 int MTK_PCIE_IMBASEBAR0 (int) ;
 int MTK_PCIE_STATUS (int) ;
 int MTK_PCI_PCIENA ;
 scalar_t__ MTK_SOC_MT7620A ;
 scalar_t__ MTK_SOC_MT7621 ;
 scalar_t__ MTK_SOC_MT7628 ;
 scalar_t__ MTK_SOC_MT7688 ;
 int MT_READ32 (struct mtk_pci_softc*,int ) ;
 int MT_WRITE32 (struct mtk_pci_softc*,int ,int) ;
 int PCIR_IOBASEH_1 ;
 int PCIR_IOBASEL_1 ;
 int PCIR_IOLIMITH_1 ;
 int PCIR_IOLIMITL_1 ;
 int PCIR_MEMBASE_1 ;
 int PCIR_MEMLIMIT_1 ;
 int PCIR_PMBASEH_1 ;
 int PCIR_PMBASEL_1 ;
 int PCIR_PMLIMITH_1 ;
 int PCIR_PMLIMITL_1 ;
 struct mtk_pci_softc* device_get_softc (int ) ;
 int mtk_pci_read_config (int ,int ,int,int ,int,int) ;
 int mtk_pci_write_config (int ,int ,int,int ,int,int,int) ;

__attribute__((used)) static void
mtk_pcie_phy_setup_slots(device_t dev)
{
 struct mtk_pci_softc *sc = device_get_softc(dev);
 uint32_t bar0_val, val;
 int i;


 MT_WRITE32(sc, MTK_PCI_PCIENA, 0);


 bar0_val = 0x03FF0001;


 if (sc->socid == MTK_SOC_MT7620A || sc->socid == MTK_SOC_MT7628 ||
     sc->socid == MTK_SOC_MT7688 || sc->socid == MTK_SOC_MT7621)
  bar0_val = 0x7FFF0001;


 sc->pcie_link_status = 0;


 DELAY(500000);





 for (i = 0; i < sc->num_slots; i++) {

  if (MT_READ32(sc, MTK_PCIE_STATUS(i)) & 1)
   sc->pcie_link_status |= (1<<i);
  else
   continue;




  MT_WRITE32(sc, MTK_PCIE_BAR0SETUP(i), bar0_val);

  MT_WRITE32(sc, MTK_PCIE_BAR1SETUP(i), 0);

  MT_WRITE32(sc, MTK_PCIE_IMBASEBAR0(i), 0);

  MT_WRITE32(sc, MTK_PCIE_CLASS(i), 0x06040001);

  val = mtk_pci_read_config(dev, 0, i, 0, 0x4, 4);
  mtk_pci_write_config(dev, 0, i, 0, 0x4, val | 0x4, 4);
  val = mtk_pci_read_config(dev, 0, i, 0, 0x70c, 4);
  val &= ~(0xff << 8);
  val |= (0x50 << 8);
  mtk_pci_write_config(dev, 0, i, 0, 0x70c, val, 4);

  mtk_pci_write_config(dev, 0, i, 0, PCIR_IOBASEL_1, 0xff, 1);
  mtk_pci_write_config(dev, 0, i, 0, PCIR_IOBASEH_1, 0xffff, 2);
  mtk_pci_write_config(dev, 0, i, 0, PCIR_IOLIMITL_1, 0, 1);
  mtk_pci_write_config(dev, 0, i, 0, PCIR_IOLIMITH_1, 0, 2);
  mtk_pci_write_config(dev, 0, i, 0, PCIR_MEMBASE_1, 0xffff, 2);
  mtk_pci_write_config(dev, 0, i, 0, PCIR_MEMLIMIT_1, 0, 2);
  mtk_pci_write_config(dev, 0, i, 0, PCIR_PMBASEL_1, 0xffff, 2);
  mtk_pci_write_config(dev, 0, i, 0, PCIR_PMBASEH_1, 0xffffffff,
      4);
  mtk_pci_write_config(dev, 0, i, 0, PCIR_PMLIMITL_1, 0, 2);
  mtk_pci_write_config(dev, 0, i, 0, PCIR_PMLIMITH_1, 0, 4);
 }
}
