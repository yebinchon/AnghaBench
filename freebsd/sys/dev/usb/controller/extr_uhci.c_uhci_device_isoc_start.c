
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xfer {int dummy; } ;


 int uhci_transfer_intr_enqueue (struct usb_xfer*) ;

__attribute__((used)) static void
uhci_device_isoc_start(struct usb_xfer *xfer)
{

 uhci_transfer_intr_enqueue(xfer);
}
