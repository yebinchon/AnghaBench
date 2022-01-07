
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhnd_pci_softc {int dummy; } ;


 int BHND_PCIE_MDIO_CTL ;
 int BHND_PCIE_MDIO_CTL_DELAY ;
 int BHND_PCI_LOCK_ASSERT (struct bhnd_pci_softc*,int ) ;
 int BHND_PCI_WRITE_4 (struct bhnd_pci_softc*,int ,int ) ;
 int DELAY (int ) ;
 int MA_OWNED ;

__attribute__((used)) static int
bhnd_pcie_mdio_ioctl(struct bhnd_pci_softc *sc, uint32_t cmd)
{
 BHND_PCI_LOCK_ASSERT(sc, MA_OWNED);

 BHND_PCI_WRITE_4(sc, BHND_PCIE_MDIO_CTL, cmd);
 DELAY(BHND_PCIE_MDIO_CTL_DELAY);
 return (0);
}
