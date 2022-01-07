
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct octopci_softc {int dummy; } ;
typedef int device_t ;
struct TYPE_2__ {int board_type; } ;




 int OCTEON_FEATURE_PCIE ;
 int OCTEON_IRQ_PCI_INT0 ;
 int OCTEON_IRQ_PCI_INT2 ;
 TYPE_1__* cvmx_sysinfo_get () ;
 struct octopci_softc* device_get_softc (int ) ;
 scalar_t__ octeon_has_feature (int ) ;
 unsigned int pci_get_bus (int ) ;
 unsigned int pci_get_function (int ) ;
 unsigned int pci_get_slot (int ) ;

__attribute__((used)) static int
octopci_route_interrupt(device_t dev, device_t child, int pin)
{
 struct octopci_softc *sc;
 unsigned bus, slot, func;
 unsigned irq;

 sc = device_get_softc(dev);

 if (octeon_has_feature(OCTEON_FEATURE_PCIE))
  return (OCTEON_IRQ_PCI_INT0 + pin - 1);

        bus = pci_get_bus(child);
        slot = pci_get_slot(child);
        func = pci_get_function(child);
 switch (cvmx_sysinfo_get()->board_type) {
 default:
  break;
 }

 irq = slot + pin - 3;

 return (OCTEON_IRQ_PCI_INT0 + (irq & 3));
}
