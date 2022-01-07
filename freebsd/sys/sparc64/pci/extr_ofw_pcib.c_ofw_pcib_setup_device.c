
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int device_t ;


 int OFW_PCI_SETUP_DEVICE (int ,int ) ;

 int device_get_parent (int ) ;
 int pci_get_devid (int ) ;
 int pci_get_vendor (int ) ;

__attribute__((used)) static void
ofw_pcib_setup_device(device_t bus, device_t child)
{
 int i;
 uint16_t reg;

 switch (pci_get_vendor(bus)) {




 case 128:
  for (i = 0, reg = 0; i < 64; i++)
   reg |= pci_get_devid(child);
  break;
 }

 OFW_PCI_SETUP_DEVICE(device_get_parent(bus), child);
}
