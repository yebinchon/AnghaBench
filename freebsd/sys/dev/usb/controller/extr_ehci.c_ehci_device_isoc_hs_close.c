
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xfer {int dummy; } ;


 int USB_ERR_CANCELLED ;
 int ehci_device_done (struct usb_xfer*,int ) ;
 int usb_hs_bandwidth_free (struct usb_xfer*) ;

__attribute__((used)) static void
ehci_device_isoc_hs_close(struct usb_xfer *xfer)
{
 ehci_device_done(xfer, USB_ERR_CANCELLED);


 usb_hs_bandwidth_free(xfer);
}
