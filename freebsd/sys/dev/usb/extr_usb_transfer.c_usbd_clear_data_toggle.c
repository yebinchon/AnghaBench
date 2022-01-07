
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_endpoint {scalar_t__ toggle_next; } ;
struct usb_device {int bus; } ;


 int DPRINTFN (int,char*,struct usb_device*,struct usb_endpoint*) ;
 int USB_BUS_LOCK (int ) ;
 int USB_BUS_UNLOCK (int ) ;
 int usbd_clear_stall_locked (struct usb_device*,struct usb_endpoint*) ;

void
usbd_clear_data_toggle(struct usb_device *udev, struct usb_endpoint *ep)
{
 DPRINTFN(5, "udev=%p endpoint=%p\n", udev, ep);

 USB_BUS_LOCK(udev->bus);
 ep->toggle_next = 0;

 usbd_clear_stall_locked(udev, ep);
 USB_BUS_UNLOCK(udev->bus);
}
