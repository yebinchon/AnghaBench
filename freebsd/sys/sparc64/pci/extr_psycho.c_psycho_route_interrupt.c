
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psycho_softc {int sc_half; } ;
typedef int ofw_pci_intr_t ;
typedef int device_t ;
typedef scalar_t__ bus_addr_t ;


 int INTINO (int ) ;
 scalar_t__ PCI_INTERRUPT_VALID (int) ;
 scalar_t__ PSR_PCIA0_INT_MAP ;
 int PSYCHO_READ8 (struct psycho_softc*,scalar_t__) ;
 struct psycho_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int,int,int ,int) ;
 int ofw_pci_route_interrupt_common (int ,int ,int) ;
 int pci_get_function (int ) ;
 int pci_get_slot (int ) ;

__attribute__((used)) static int
psycho_route_interrupt(device_t bridge, device_t dev, int pin)
{
 struct psycho_softc *sc;
 bus_addr_t intrmap;
 ofw_pci_intr_t mintr;

 mintr = ofw_pci_route_interrupt_common(bridge, dev, pin);
 if (PCI_INTERRUPT_VALID(mintr))
  return (mintr);







 if (pin > 4)
  return (pin);
 sc = device_get_softc(bridge);
 intrmap = PSR_PCIA0_INT_MAP +
     8 * (pci_get_slot(dev) - 1 + 3 * sc->sc_half);
 mintr = INTINO(PSYCHO_READ8(sc, intrmap)) + pin - 1;
 device_printf(bridge,
     "guessing interrupt %d for device %d.%d pin %d\n",
     (int)mintr, pci_get_slot(dev), pci_get_function(dev), pin);
 return (mintr);
}
