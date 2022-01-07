
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhnd_pci_softc {int dummy; } ;


 int BHND_PCIE_ASSERT (struct bhnd_pci_softc*) ;
 int BHND_PCIE_MDIOCTL_DIVISOR_VAL ;
 int BHND_PCIE_MDIOCTL_PREAM_EN ;
 int bhnd_pcie_mdio_ioctl (struct bhnd_pci_softc*,int) ;

__attribute__((used)) static int
bhnd_pcie_mdio_enable(struct bhnd_pci_softc *sc)
{
 uint32_t ctl;

 BHND_PCIE_ASSERT(sc);


 ctl = BHND_PCIE_MDIOCTL_PREAM_EN|BHND_PCIE_MDIOCTL_DIVISOR_VAL;
 return (bhnd_pcie_mdio_ioctl(sc, ctl));
}
