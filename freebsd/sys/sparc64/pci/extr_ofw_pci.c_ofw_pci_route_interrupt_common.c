
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_pci_softc {int sc_pci_iinfo; } ;
struct ofw_pci_register {int dummy; } ;
typedef int reg ;
typedef int pintr ;
typedef int ofw_pci_intr_t ;
typedef int mintr ;
typedef int device_t ;


 int PCI_INVALID_IRQ ;
 struct ofw_pci_softc* device_get_softc (int ) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ ofw_bus_lookup_imap (int ,int *,struct ofw_pci_register*,int,int*,int,int*,int,int *) ;

ofw_pci_intr_t
ofw_pci_route_interrupt_common(device_t bridge, device_t dev, int pin)
{
 struct ofw_pci_softc *sc;
 struct ofw_pci_register reg;
 ofw_pci_intr_t pintr, mintr;

 sc = device_get_softc(bridge);
 pintr = pin;
 if (ofw_bus_lookup_imap(ofw_bus_get_node(dev), &sc->sc_pci_iinfo,
     &reg, sizeof(reg), &pintr, sizeof(pintr), &mintr, sizeof(mintr),
     ((void*)0)) != 0)
  return (mintr);
 return (PCI_INVALID_IRQ);
}
