
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ofw_pci_intr_t ;
typedef int device_t ;


 int PCI_INTERRUPT_VALID (int) ;
 int device_printf (int ,char*,int,int ,int ) ;
 int ofw_pci_route_interrupt_common (int ,int ,int) ;
 int pci_get_function (int ) ;
 int pci_get_slot (int ) ;

__attribute__((used)) static int
schizo_route_interrupt(device_t bridge, device_t dev, int pin)
{
 ofw_pci_intr_t mintr;

 mintr = ofw_pci_route_interrupt_common(bridge, dev, pin);
 if (!PCI_INTERRUPT_VALID(mintr))
  device_printf(bridge,
      "could not route pin %d for device %d.%d\n",
      pin, pci_get_slot(dev), pci_get_function(dev));
 return (mintr);
}
