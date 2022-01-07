
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int PCI_LEGSUP ;
 int PCI_LEGSUP_USBPIRQDEN ;
 int pci_write_config (int ,int ,int ,int) ;

__attribute__((used)) static int
uhci_pci_take_controller(device_t self)
{
 pci_write_config(self, PCI_LEGSUP, PCI_LEGSUP_USBPIRQDEN, 2);

 return (0);
}
