
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int DELAY (int) ;
 int USB_CONTROLLER_RESET ;
 int USB_CTL_0 ;
 int USB_PHY_0 ;
 int USB_PHY_PORT_RESET_0 ;
 int USB_PHY_PORT_RESET_1 ;
 int USB_PHY_RESET ;
 int nlm_get_usb_regbase (int,int) ;
 int nlm_read_usb_reg (int ,int ) ;
 int nlm_write_usb_reg (int ,int ,int) ;

__attribute__((used)) static void
nlm_usb_hw_reset(int node, int port)
{
 uint64_t port_addr;
 uint32_t val;


 port_addr = nlm_get_usb_regbase(node, port);
 val = nlm_read_usb_reg(port_addr, USB_PHY_0);
 val &= ~(USB_PHY_RESET | USB_PHY_PORT_RESET_0 | USB_PHY_PORT_RESET_1);
 nlm_write_usb_reg(port_addr, USB_PHY_0, val);

 DELAY(100);
 val = nlm_read_usb_reg(port_addr, USB_CTL_0);
 val &= ~(USB_CONTROLLER_RESET);
 val |= 0x4;
 nlm_write_usb_reg(port_addr, USB_CTL_0, val);
}
