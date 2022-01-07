
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xfer {int dummy; } ;


 int musbotg_setup_standard_chain (struct usb_xfer*) ;
 int musbotg_start_standard_chain (struct usb_xfer*) ;

__attribute__((used)) static void
musbotg_device_bulk_start(struct usb_xfer *xfer)
{

 musbotg_setup_standard_chain(xfer);
 musbotg_start_standard_chain(xfer);
}
