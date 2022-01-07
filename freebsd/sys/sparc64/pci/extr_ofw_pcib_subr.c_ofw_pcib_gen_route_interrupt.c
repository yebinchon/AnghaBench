
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_bus_iinfo {scalar_t__ opi_imapsz; } ;
struct ofw_pcib_gen_softc {struct ofw_bus_iinfo ops_iinfo; } ;
struct ofw_pci_register {int dummy; } ;
typedef int reg ;
typedef int pintr ;
typedef int ofw_pci_intr_t ;
typedef int mintr ;
typedef int device_t ;


 int PCIB_ROUTE_INTERRUPT (int ,int ,int) ;
 int device_get_parent (int ) ;
 struct ofw_pcib_gen_softc* device_get_softc (int ) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ ofw_bus_lookup_imap (int ,struct ofw_bus_iinfo*,struct ofw_pci_register*,int,int*,int,int*,int,int *) ;
 int pcib_route_interrupt (int ,int ,int) ;

int
ofw_pcib_gen_route_interrupt(device_t bridge, device_t dev, int intpin)
{
 struct ofw_pcib_gen_softc *sc;
 struct ofw_bus_iinfo *ii;
 struct ofw_pci_register reg;
 ofw_pci_intr_t pintr, mintr;

 sc = device_get_softc(bridge);
 ii = &sc->ops_iinfo;
 if (ii->opi_imapsz > 0) {
  pintr = intpin;
  if (ofw_bus_lookup_imap(ofw_bus_get_node(dev), ii, &reg,
      sizeof(reg), &pintr, sizeof(pintr), &mintr, sizeof(mintr),
      ((void*)0))) {





   return (mintr);
  }
 } else if (intpin >= 1 && intpin <= 4) {




  return (pcib_route_interrupt(bridge, dev, intpin));
 }

 return (PCIB_ROUTE_INTERRUPT(device_get_parent(device_get_parent(
     bridge)), bridge, intpin));
}
