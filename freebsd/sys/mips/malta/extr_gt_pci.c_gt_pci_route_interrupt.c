
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int device_printf (int ,char*,int,int,int,int) ;
 int pci_get_bus (int ) ;
 int pci_get_function (int ) ;
 int pci_get_slot (int ) ;

__attribute__((used)) static int
gt_pci_route_interrupt(device_t pcib, device_t dev, int pin)
{
 int bus;
 int device;
 int func;

 bus = pci_get_bus(dev);
 device = pci_get_slot(dev);
 func = pci_get_function(dev);



 switch (device) {
 case 9:


  return 0;
 case 11:
  return 10;
 default:
  device_printf(pcib, "no IRQ mapping for %d/%d/%d/%d\n", bus, device, func, pin);

 }
 return (0);

}
