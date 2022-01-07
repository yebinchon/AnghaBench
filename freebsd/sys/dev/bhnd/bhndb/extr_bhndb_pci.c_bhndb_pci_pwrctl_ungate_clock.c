
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhndb_pci_softc {int dev; } ;
typedef int device_t ;
typedef scalar_t__ bhnd_clock ;


 scalar_t__ BHND_CLOCK_HT ;
 int ENODEV ;
 int ENXIO ;
 int bhndb_enable_pci_clocks (int ) ;
 scalar_t__ bhndb_is_pcie_attached (int ) ;
 struct bhndb_pci_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bhndb_pci_pwrctl_ungate_clock(device_t dev, device_t child,
 bhnd_clock clock)
{
 struct bhndb_pci_softc *sc = device_get_softc(dev);


 if (bhndb_is_pcie_attached(sc->dev))
  return (ENODEV);


 if (clock != BHND_CLOCK_HT)
  return (ENXIO);

 return (bhndb_enable_pci_clocks(sc->dev));
}
