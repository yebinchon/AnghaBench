
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhnd_pci_softc {int dummy; } ;


 int BHND_PCIE_MDIODATA_CMD_WRITE ;
 int BHND_PCIE_MDIODATA_START ;
 int BHND_PCIE_MDIODATA_TA ;
 int BHND_PCIE_MDIO_CTL_DELAY ;
 int BHND_PCIE_MDIO_DATA ;
 int BHND_PCI_LOCK_ASSERT (struct bhnd_pci_softc*,int ) ;
 int BHND_PCI_WRITE_4 (struct bhnd_pci_softc*,int ,int) ;
 int DELAY (int ) ;
 int MA_OWNED ;
 int bhnd_pcie_mdio_wait_idle (struct bhnd_pci_softc*) ;

__attribute__((used)) static int
bhnd_pcie_mdio_cmd_write(struct bhnd_pci_softc *sc, uint32_t cmd)
{
 int error;

 BHND_PCI_LOCK_ASSERT(sc, MA_OWNED);

 cmd |= BHND_PCIE_MDIODATA_START|BHND_PCIE_MDIODATA_TA|BHND_PCIE_MDIODATA_CMD_WRITE;

 BHND_PCI_WRITE_4(sc, BHND_PCIE_MDIO_DATA, cmd);
 DELAY(BHND_PCIE_MDIO_CTL_DELAY);

 if ((error = bhnd_pcie_mdio_wait_idle(sc)))
  return (error);

 return (0);
}
