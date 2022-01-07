
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int MTK_PCIE0_IRQ ;
 int panic (char*,int) ;
 int pci_get_bus (int ) ;
 int pci_get_device (int ) ;
 int pci_get_slot (int ) ;

__attribute__((used)) static int
mtk_pci_route_interrupt(device_t pcib, device_t device, int pin)
{
 int bus, sl, dev;

 bus = pci_get_bus(device);
 sl = pci_get_slot(device);
 dev = pci_get_device(device);

 if (bus != 0)
  panic("Unexpected bus number %d\n", bus);


 switch (sl) {
 case 0: return MTK_PCIE0_IRQ;
 case 1: return MTK_PCIE0_IRQ + 1;
 case 2: return MTK_PCIE0_IRQ + 2;
 default: return (-1);
 }

 return (-1);
}
