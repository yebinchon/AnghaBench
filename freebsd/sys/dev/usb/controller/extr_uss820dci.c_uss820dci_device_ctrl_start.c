
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xfer {int dummy; } ;


 int uss820dci_setup_standard_chain (struct usb_xfer*) ;
 int uss820dci_start_standard_chain (struct usb_xfer*) ;

__attribute__((used)) static void
uss820dci_device_ctrl_start(struct usb_xfer *xfer)
{

 uss820dci_setup_standard_chain(xfer);
 uss820dci_start_standard_chain(xfer);
}
