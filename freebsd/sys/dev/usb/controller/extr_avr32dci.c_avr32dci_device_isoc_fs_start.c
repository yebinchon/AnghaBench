
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xfer {int dummy; } ;


 int avr32dci_start_standard_chain (struct usb_xfer*) ;

__attribute__((used)) static void
avr32dci_device_isoc_fs_start(struct usb_xfer *xfer)
{

 avr32dci_start_standard_chain(xfer);
}
