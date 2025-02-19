
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_pci_softc {scalar_t__ socid; } ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ MTK_SOC_MT7621 ;
 int SYSCTL_MT7621_REV_E ;
 int SYSCTL_REVID ;
 int SYSCTL_REVID_MASK ;
 struct mtk_pci_softc* device_get_softc (int ) ;
 scalar_t__ fdt_clock_enable_all (int ) ;
 scalar_t__ fdt_reset_assert_all (int ) ;
 scalar_t__ fdt_reset_deassert_all (int ) ;
 int mtk_sysctl_get (int ) ;

__attribute__((used)) static int
mtk_pcie_phy_start(device_t dev)
{
 struct mtk_pci_softc *sc = device_get_softc(dev);

 if (sc->socid == MTK_SOC_MT7621 &&
     (mtk_sysctl_get(SYSCTL_REVID) & SYSCTL_REVID_MASK) !=
     SYSCTL_MT7621_REV_E) {
  if (fdt_reset_assert_all(dev))
   return (ENXIO);
 } else {
  if (fdt_reset_deassert_all(dev))
   return (ENXIO);
 }

 if (fdt_clock_enable_all(dev))
  return (ENXIO);

 return (0);
}
