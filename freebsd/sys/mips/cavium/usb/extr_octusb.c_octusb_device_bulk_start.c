
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xfer {int dummy; } ;


 int octusb_setup_standard_chain (struct usb_xfer*) ;
 int octusb_start_standard_chain (struct usb_xfer*) ;

__attribute__((used)) static void
octusb_device_bulk_start(struct usb_xfer *xfer)
{

 octusb_setup_standard_chain(xfer);
 octusb_start_standard_chain(xfer);
}
