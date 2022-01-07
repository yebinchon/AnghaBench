
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {int pcie_link_speed; int pcie_link_width; int flags; int dev; } ;
typedef TYPE_1__* POCE_SOFTC ;


 int OCE_FLAGS_MSIX_CAPABLE ;
 int OCE_FLAGS_MSI_CAPABLE ;
 int OCE_FLAGS_PCIE ;
 int OCE_FLAGS_PCIX ;
 int PCIY_EXPRESS ;
 int PCIY_MSI ;
 int PCIY_MSIX ;
 int PCIY_PCIX ;
 scalar_t__ pci_find_extcap (int ,int ,scalar_t__*) ;
 scalar_t__ pci_msix_count (int ) ;
 int pci_read_config (int ,scalar_t__,int) ;

__attribute__((used)) static
void oce_get_pci_capabilities(POCE_SOFTC sc)
{
 uint32_t val;





 if (pci_find_extcap(sc->dev, PCIY_PCIX, &val) == 0) {
  if (val != 0)
   sc->flags |= OCE_FLAGS_PCIX;
 }

 if (pci_find_extcap(sc->dev, PCIY_EXPRESS, &val) == 0) {
  if (val != 0) {
   uint16_t link_status =
       pci_read_config(sc->dev, val + 0x12, 2);

   sc->flags |= OCE_FLAGS_PCIE;
   sc->pcie_link_speed = link_status & 0xf;
   sc->pcie_link_width = (link_status >> 4) & 0x3f;
  }
 }

 if (pci_find_extcap(sc->dev, PCIY_MSI, &val) == 0) {
  if (val != 0)
   sc->flags |= OCE_FLAGS_MSI_CAPABLE;
 }

 if (pci_find_extcap(sc->dev, PCIY_MSIX, &val) == 0) {
  if (val != 0) {
   val = pci_msix_count(sc->dev);
   sc->flags |= OCE_FLAGS_MSIX_CAPABLE;
  }
 }
}
