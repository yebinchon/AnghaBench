
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int USB_CTRL_INTERRUPT_EN ;
 int USB_INT_EN ;
 int USB_OHCI_INTERRUPT1_EN ;
 int USB_OHCI_INTERRUPT2_EN ;
 int USB_OHCI_INTERRUPT_EN ;
 int nlm_get_usb_regbase (int,int) ;
 int nlm_read_usb_reg (int ,int ) ;
 int nlm_write_usb_reg (int ,int ,int) ;

__attribute__((used)) static void
nlm_usb_intr_en(int node, int port)
{
 uint32_t val;
 uint64_t port_addr;

 port_addr = nlm_get_usb_regbase(node, port);
 val = nlm_read_usb_reg(port_addr, USB_INT_EN);
 val = USB_CTRL_INTERRUPT_EN | USB_OHCI_INTERRUPT_EN |
  USB_OHCI_INTERRUPT1_EN | USB_OHCI_INTERRUPT2_EN;
        nlm_write_usb_reg(port_addr, USB_INT_EN, val);
}
