
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_endpoint {int ep_mode; } ;
struct usb_device {int dummy; } ;



uint8_t
usbd_get_endpoint_mode(struct usb_device *udev, struct usb_endpoint *ep)
{
 return (ep->ep_mode);
}
