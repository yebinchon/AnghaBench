
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int PCI_POWERSTATE_D0 ;
 int PCI_POWERSTATE_D3 ;
 int pci_get_powerstate (int ) ;
 int pci_set_powerstate (int ,int) ;

__attribute__((used)) static void
vga_pci_reset(device_t dev)
{
 int ps;






 ps = pci_get_powerstate(dev);
 if (ps != PCI_POWERSTATE_D0 && ps != PCI_POWERSTATE_D3)
  pci_set_powerstate(dev, PCI_POWERSTATE_D0);
 if (pci_get_powerstate(dev) != PCI_POWERSTATE_D3)
  pci_set_powerstate(dev, PCI_POWERSTATE_D3);
 pci_set_powerstate(dev, ps);
}
