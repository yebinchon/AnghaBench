
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 int PCI_XHCI_INTEL_USB2PRM ;
 int PCI_XHCI_INTEL_USB3PRM ;
 int PCI_XHCI_INTEL_USB3_PSSEN ;
 int PCI_XHCI_INTEL_XUSB2PR ;
 int device_printf (int ,char*,int) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static int
xhci_pci_port_route(device_t self, uint32_t set, uint32_t clear)
{
 uint32_t temp;
 uint32_t usb3_mask;
 uint32_t usb2_mask;

 temp = pci_read_config(self, PCI_XHCI_INTEL_USB3_PSSEN, 4) |
     pci_read_config(self, PCI_XHCI_INTEL_XUSB2PR, 4);

 temp |= set;
 temp &= ~clear;


 usb3_mask = pci_read_config(self, PCI_XHCI_INTEL_USB3PRM, 4);
 usb2_mask = pci_read_config(self, PCI_XHCI_INTEL_USB2PRM, 4);

 pci_write_config(self, PCI_XHCI_INTEL_USB3_PSSEN, temp & usb3_mask, 4);
 pci_write_config(self, PCI_XHCI_INTEL_XUSB2PR, temp & usb2_mask, 4);

 device_printf(self, "Port routing mask set to 0x%08x\n", temp);

 return (0);
}
