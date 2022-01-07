
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef scalar_t__ uint8_t ;
struct usb_endpoint {scalar_t__ iface_index; int * edesc; } ;
struct usb_device {int endpoints_max; struct usb_endpoint* endpoints; } ;


 int usbd_set_endpoint_stall (struct usb_device*,struct usb_endpoint*,int ) ;

usb_error_t
usb_reset_iface_endpoints(struct usb_device *udev, uint8_t iface_index)
{
 struct usb_endpoint *ep;
 struct usb_endpoint *ep_end;

 ep = udev->endpoints;
 ep_end = udev->endpoints + udev->endpoints_max;

 for (; ep != ep_end; ep++) {

  if ((ep->edesc == ((void*)0)) ||
      (ep->iface_index != iface_index)) {
   continue;
  }

  usbd_set_endpoint_stall(udev, ep, 0);
 }
 return (0);
}
