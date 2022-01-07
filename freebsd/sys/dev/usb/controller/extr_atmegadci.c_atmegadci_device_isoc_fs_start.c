
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xfer {int dummy; } ;


 int atmegadci_start_standard_chain (struct usb_xfer*) ;

__attribute__((used)) static void
atmegadci_device_isoc_fs_start(struct usb_xfer *xfer)
{

 atmegadci_start_standard_chain(xfer);
}
