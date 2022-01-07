
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhndb_pci_softc {int parent; int dev; } ;
typedef int device_t ;
typedef scalar_t__ bhnd_clock ;
typedef int bhnd_clksrc ;


 int BHNDB_PCI_GPIO_OUT ;
 int BHNDB_PCI_GPIO_SCS ;
 int BHND_CLKSRC_PCI ;
 int BHND_CLKSRC_UNKNOWN ;
 int BHND_CLKSRC_XTAL ;
 scalar_t__ BHND_CLOCK_ILP ;
 scalar_t__ bhndb_is_pcie_attached (int ) ;
 struct bhndb_pci_softc* device_get_softc (int ) ;
 int pci_read_config (int ,int ,int) ;

__attribute__((used)) static bhnd_clksrc
bhndb_pci_pwrctl_get_clksrc(device_t dev, device_t child,
 bhnd_clock clock)
{
 struct bhndb_pci_softc *sc;
 uint32_t gpio_out;

 sc = device_get_softc(dev);


 if (bhndb_is_pcie_attached(sc->dev))
  return (BHND_CLKSRC_UNKNOWN);


 if (clock != BHND_CLOCK_ILP)
  return (BHND_CLKSRC_UNKNOWN);

 gpio_out = pci_read_config(sc->parent, BHNDB_PCI_GPIO_OUT, 4);
 if (gpio_out & BHNDB_PCI_GPIO_SCS)
  return (BHND_CLKSRC_PCI);
 else
  return (BHND_CLKSRC_XTAL);
}
