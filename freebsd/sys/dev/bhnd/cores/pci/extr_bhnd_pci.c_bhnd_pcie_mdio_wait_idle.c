
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhnd_pci_softc {int dummy; } ;


 int BHND_PCIE_MDIOCTL_DONE ;
 int BHND_PCIE_MDIO_CTL ;
 int BHND_PCIE_MDIO_RETRY_COUNT ;
 int BHND_PCIE_MDIO_RETRY_DELAY ;
 int BHND_PCI_READ_4 (struct bhnd_pci_softc*,int ) ;
 int DELAY (int ) ;
 int ETIMEDOUT ;

__attribute__((used)) static int
bhnd_pcie_mdio_wait_idle(struct bhnd_pci_softc *sc)
{
 uint32_t ctl;


 for (int i = 0; i < BHND_PCIE_MDIO_RETRY_COUNT; i++) {
  ctl = BHND_PCI_READ_4(sc, BHND_PCIE_MDIO_CTL);
  if ((ctl & BHND_PCIE_MDIOCTL_DONE))
   return (0);

  DELAY(BHND_PCIE_MDIO_RETRY_DELAY);
 }

 return (ETIMEDOUT);
}
