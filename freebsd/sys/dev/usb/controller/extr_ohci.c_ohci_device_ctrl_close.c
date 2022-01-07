
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xfer {int dummy; } ;


 int USB_ERR_CANCELLED ;
 int ohci_device_done (struct usb_xfer*,int ) ;

__attribute__((used)) static void
ohci_device_ctrl_close(struct usb_xfer *xfer)
{
 ohci_device_done(xfer, USB_ERR_CANCELLED);
}
