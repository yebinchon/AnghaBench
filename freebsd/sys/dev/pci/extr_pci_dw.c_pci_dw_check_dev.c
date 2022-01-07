
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct pci_dw_softc {scalar_t__ bus_start; scalar_t__ bus_end; scalar_t__ root_bus; int dev; } ;


 int PCI_DW_GET_LINK (int ,int*) ;
 scalar_t__ PCI_FUNCMAX ;
 scalar_t__ PCI_REGMAX ;
 scalar_t__ PCI_SLOTMAX ;

__attribute__((used)) static bool
pci_dw_check_dev(struct pci_dw_softc *sc, u_int bus, u_int slot, u_int func,
    u_int reg)
{
 bool status;
 int rv;

 if (bus < sc->bus_start || bus > sc->bus_end || slot > PCI_SLOTMAX ||
     func > PCI_FUNCMAX || reg > PCI_REGMAX)
  return (0);


 if (bus != sc->root_bus) {
  rv = PCI_DW_GET_LINK(sc->dev, &status);
  if (rv != 0 || !status)
   return (0);
  return (1);
 }


 if (slot > 0 || func > 0)
  return (0);
 return (1);
}
