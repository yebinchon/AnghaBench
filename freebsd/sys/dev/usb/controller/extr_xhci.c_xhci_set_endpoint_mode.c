
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint8_t ;
struct usb_endpoint {TYPE_1__* edesc; } ;
struct usb_device {int speed; } ;
struct TYPE_2__ {int bmAttributes; } ;


 int UE_BULK ;
 int UE_XFERTYPE ;


 int USB_ERR_INVAL ;
 int USB_SPEED_SUPER ;
 int xhcistreams ;

__attribute__((used)) static usb_error_t
xhci_set_endpoint_mode(struct usb_device *udev, struct usb_endpoint *ep,
    uint8_t ep_mode)
{
 switch (ep_mode) {
 case 129:
  return (0);
 case 128:
  if (xhcistreams == 0 ||
      (ep->edesc->bmAttributes & UE_XFERTYPE) != UE_BULK ||
      udev->speed != USB_SPEED_SUPER)
   return (USB_ERR_INVAL);
  return (0);
 default:
  return (USB_ERR_INVAL);
 }
}
