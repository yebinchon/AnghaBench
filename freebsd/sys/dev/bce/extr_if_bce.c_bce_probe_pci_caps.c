
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct bce_softc {int link_speed; int link_width; int bce_cap_flags; int bce_flags; } ;
typedef int device_t ;


 int BCE_INFO_LOAD ;
 int BCE_MSIX_CAPABLE_FLAG ;
 int BCE_MSI_CAPABLE_FLAG ;
 int BCE_PCIE_CAPABLE_FLAG ;
 int BCE_PCIE_FLAG ;
 int BCE_PCIX_CAPABLE_FLAG ;
 int BCE_VERBOSE_LOAD ;
 int DBENTER (int ) ;
 int DBEXIT (int ) ;
 int DBPRINT (struct bce_softc*,int ,char*,int) ;
 int PCIY_EXPRESS ;
 int PCIY_MSI ;
 int PCIY_MSIX ;
 int PCIY_PCIX ;
 scalar_t__ pci_find_cap (int ,int ,scalar_t__*) ;
 int pci_read_config (int ,scalar_t__,int) ;

__attribute__((used)) static void
bce_probe_pci_caps(device_t dev, struct bce_softc *sc)
{
 u32 reg;

 DBENTER(BCE_VERBOSE_LOAD);


 if (pci_find_cap(dev, PCIY_PCIX, &reg) == 0) {
  if (reg != 0)
   sc->bce_cap_flags |= BCE_PCIX_CAPABLE_FLAG;
 }


 if (pci_find_cap(dev, PCIY_EXPRESS, &reg) == 0) {
  if (reg != 0) {
   u16 link_status = pci_read_config(dev, reg + 0x12, 2);
   DBPRINT(sc, BCE_INFO_LOAD, "PCIe link_status = "
       "0x%08X\n", link_status);
   sc->link_speed = link_status & 0xf;
   sc->link_width = (link_status >> 4) & 0x3f;
   sc->bce_cap_flags |= BCE_PCIE_CAPABLE_FLAG;
   sc->bce_flags |= BCE_PCIE_FLAG;
  }
 }


 if (pci_find_cap(dev, PCIY_MSI, &reg) == 0) {
  if (reg != 0)
   sc->bce_cap_flags |= BCE_MSI_CAPABLE_FLAG;
 }


 if (pci_find_cap(dev, PCIY_MSIX, &reg) == 0) {
  if (reg != 0)
   sc->bce_cap_flags |= BCE_MSIX_CAPABLE_FLAG;
 }

 DBEXIT(BCE_VERBOSE_LOAD);
}
