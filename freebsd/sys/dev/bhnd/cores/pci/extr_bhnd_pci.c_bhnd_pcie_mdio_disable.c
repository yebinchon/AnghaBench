
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_pci_softc {int dev; } ;


 scalar_t__ bhnd_pcie_mdio_ioctl (struct bhnd_pci_softc*,int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
bhnd_pcie_mdio_disable(struct bhnd_pci_softc *sc)
{
 if (bhnd_pcie_mdio_ioctl(sc, 0))
  device_printf(sc->dev, "failed to disable MDIO clock\n");
}
