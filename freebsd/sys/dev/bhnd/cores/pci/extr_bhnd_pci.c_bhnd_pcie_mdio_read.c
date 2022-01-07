
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct bhnd_pci_softc {int dummy; } ;


 int BHND_PCIE_MDIODATA_ADDR (int,int) ;
 int BHND_PCI_LOCK (struct bhnd_pci_softc*) ;
 int BHND_PCI_UNLOCK (struct bhnd_pci_softc*) ;
 int bhnd_pcie_mdio_cmd_read (struct bhnd_pci_softc*,int ,int*) ;
 int bhnd_pcie_mdio_disable (struct bhnd_pci_softc*) ;
 int bhnd_pcie_mdio_enable (struct bhnd_pci_softc*) ;

int
bhnd_pcie_mdio_read(struct bhnd_pci_softc *sc, int phy, int reg)
{
 uint32_t cmd;
 uint16_t val;
 int error;


 BHND_PCI_LOCK(sc);
 bhnd_pcie_mdio_enable(sc);


 cmd = BHND_PCIE_MDIODATA_ADDR(phy, reg);
 error = bhnd_pcie_mdio_cmd_read(sc, cmd, &val);


 bhnd_pcie_mdio_disable(sc);
 BHND_PCI_UNLOCK(sc);

 if (error)
  return (~0U);

 return (val);
}
