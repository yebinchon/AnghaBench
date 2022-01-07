
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct mtk_pci_softc {int dummy; } ;


 int mtk_pcie_phy_set (struct mtk_pci_softc*,scalar_t__,int,int,int) ;

__attribute__((used)) static void
mtk_pcie_phy_mt7621_bypass_pipe_rst(struct mtk_pci_softc *sc, uint32_t off)
{

 mtk_pcie_phy_set(sc, off + 0x002c, 12, 1, 1);
 mtk_pcie_phy_set(sc, off + 0x002c, 4, 1, 1);
 mtk_pcie_phy_set(sc, off + 0x012c, 12, 1, 1);
 mtk_pcie_phy_set(sc, off + 0x012c, 4, 1, 1);
 mtk_pcie_phy_set(sc, off + 0x102c, 12, 1, 1);
 mtk_pcie_phy_set(sc, off + 0x102c, 4, 1, 1);
}
