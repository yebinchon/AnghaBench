
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xfer {int dummy; } ;


 int atmegadci_setup_standard_chain (struct usb_xfer*) ;
 int atmegadci_start_standard_chain (struct usb_xfer*) ;

__attribute__((used)) static void
atmegadci_device_non_isoc_start(struct usb_xfer *xfer)
{

 atmegadci_setup_standard_chain(xfer);
 atmegadci_start_standard_chain(xfer);
}
