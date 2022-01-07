
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 scalar_t__ PCI_VENDOR_NETLOGIC ;
 int PIC_PCIE_IRQ (int) ;
 scalar_t__ pci_get_bus (int ) ;
 int pci_get_function (int ) ;
 int pci_get_slot (int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 int xlp_pcie_link (int ,int ) ;

__attribute__((used)) static int
mips_pcib_route_interrupt(device_t bus, device_t dev, int pin)
{
 int f, d;




 if ((pin < 1) || (pin > 4))
  return (255);

 if (pci_get_bus(dev) == 0 &&
     pci_get_vendor(dev) == PCI_VENDOR_NETLOGIC) {
  f = pci_get_function(dev);
  d = pci_get_slot(dev) % 8;





  if (d == 1)
   return (PIC_PCIE_IRQ(f));
  else
   return (255);
 } else {

  return (PIC_PCIE_IRQ(xlp_pcie_link(bus, dev)));
 }
}
