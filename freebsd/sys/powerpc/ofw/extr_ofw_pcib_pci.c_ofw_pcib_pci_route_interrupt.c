
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_bus_iinfo {scalar_t__ opi_imapsz; } ;
struct ofw_pcib_softc {struct ofw_bus_iinfo ops_iinfo; } ;
struct ofw_pci_register {int phys_hi; } ;
typedef int reg ;
typedef int pintr ;
typedef int phandle_t ;
typedef int mintr ;
typedef int device_t ;
typedef int cell_t ;


 int OFW_PCI_PHYS_HI_BUSSHIFT ;
 int OFW_PCI_PHYS_HI_DEVICESHIFT ;
 int OFW_PCI_PHYS_HI_FUNCTIONSHIFT ;
 int PCIB_ROUTE_INTERRUPT (int ,int ,int) ;
 int bzero (struct ofw_pci_register*,int) ;
 int device_get_parent (int ) ;
 struct ofw_pcib_softc* device_get_softc (int ) ;
 int ofw_bus_get_node (int ) ;
 int ofw_bus_lookup_imap (int ,struct ofw_bus_iinfo*,struct ofw_pci_register*,int,int*,int,int*,int,int *) ;
 int ofw_bus_map_intr (int ,int ,int,int*) ;
 int pci_get_bus (int ) ;
 int pci_get_function (int ) ;
 int pci_get_slot (int ) ;
 int pcib_route_interrupt (int ,int ,int) ;

__attribute__((used)) static int
ofw_pcib_pci_route_interrupt(device_t bridge, device_t dev, int intpin)
{
 struct ofw_pcib_softc *sc;
 struct ofw_bus_iinfo *ii;
 struct ofw_pci_register reg;
 cell_t pintr, mintr[2];
 int intrcells;
 phandle_t iparent;

 sc = device_get_softc(bridge);
 ii = &sc->ops_iinfo;
 if (ii->opi_imapsz > 0) {
  pintr = intpin;


  bzero(&reg, sizeof(reg));
  reg.phys_hi = (pci_get_bus(dev) << OFW_PCI_PHYS_HI_BUSSHIFT) |
      (pci_get_slot(dev) << OFW_PCI_PHYS_HI_DEVICESHIFT) |
      (pci_get_function(dev) << OFW_PCI_PHYS_HI_FUNCTIONSHIFT);

  intrcells = ofw_bus_lookup_imap(ofw_bus_get_node(dev), ii, &reg,
      sizeof(reg), &pintr, sizeof(pintr), mintr, sizeof(mintr),
      &iparent);
  if (intrcells) {





   mintr[0] = ofw_bus_map_intr(dev, iparent, intrcells,
       mintr);
   return (mintr[0]);
  }
 } else if (intpin >= 1 && intpin <= 4) {




  return (pcib_route_interrupt(bridge, dev, intpin));
 }
 return (PCIB_ROUTE_INTERRUPT(device_get_parent(device_get_parent(
     bridge)), bridge, intpin));
}
