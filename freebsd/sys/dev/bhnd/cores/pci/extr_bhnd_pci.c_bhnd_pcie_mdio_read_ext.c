
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct bhnd_pci_softc {int quirks; } ;


 int BHND_PCIE_MDIODATA_ADDR (int,int) ;
 int BHND_PCIE_PHYADDR_SD ;
 int BHND_PCIE_SD_ADDREXT ;
 int BHND_PCI_LOCK (struct bhnd_pci_softc*) ;
 int BHND_PCI_QUIRK_SD_C22_EXTADDR ;
 int BHND_PCI_UNLOCK (struct bhnd_pci_softc*) ;
 int MDIO_DEVADDR_NONE ;
 int bhnd_pcie_mdio_cmd_read (struct bhnd_pci_softc*,int,int*) ;
 int bhnd_pcie_mdio_cmd_write (struct bhnd_pci_softc*,int) ;
 int bhnd_pcie_mdio_disable (struct bhnd_pci_softc*) ;
 int bhnd_pcie_mdio_enable (struct bhnd_pci_softc*) ;
 int bhnd_pcie_mdio_read (struct bhnd_pci_softc*,int,int) ;

int
bhnd_pcie_mdio_read_ext(struct bhnd_pci_softc *sc, int phy, int devaddr,
    int reg)
{
 uint32_t cmd;
 uint16_t val;
 int error;

 if (devaddr == MDIO_DEVADDR_NONE)
  return (bhnd_pcie_mdio_read(sc, phy, reg));



 if (!(sc->quirks & BHND_PCI_QUIRK_SD_C22_EXTADDR) ||
     phy != BHND_PCIE_PHYADDR_SD)
 {
  return (~0U);
 }


 BHND_PCI_LOCK(sc);
 bhnd_pcie_mdio_enable(sc);


 cmd = BHND_PCIE_MDIODATA_ADDR(phy, BHND_PCIE_SD_ADDREXT) | devaddr;
 if ((error = bhnd_pcie_mdio_cmd_write(sc, cmd)))
  goto cleanup;


 cmd = BHND_PCIE_MDIODATA_ADDR(phy, reg);
 error = bhnd_pcie_mdio_cmd_read(sc, cmd, &val);

cleanup:
 bhnd_pcie_mdio_disable(sc);
 BHND_PCI_UNLOCK(sc);

 if (error)
  return (~0U);

 return (val);
}
