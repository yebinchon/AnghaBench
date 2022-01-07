
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint8_t ;
struct usb_xfer {TYPE_1__* xroot; } ;
struct usb_device {int dummy; } ;
struct TYPE_2__ {struct usb_device* udev; } ;


 int USB_XFER_LOCK (struct usb_xfer*) ;
 int USB_XFER_UNLOCK (struct usb_xfer*) ;
 int usbd_get_ep_by_addr (struct usb_device*,int ) ;
 int usbd_set_endpoint_stall (struct usb_device*,int ,int ) ;

__attribute__((used)) static usb_error_t
usb_handle_set_stall(struct usb_xfer *xfer, uint8_t ep, uint8_t do_stall)
{
 struct usb_device *udev = xfer->xroot->udev;
 usb_error_t err;

 USB_XFER_UNLOCK(xfer);
 err = usbd_set_endpoint_stall(udev,
     usbd_get_ep_by_addr(udev, ep), do_stall);
 USB_XFER_LOCK(xfer);
 return (err);
}
