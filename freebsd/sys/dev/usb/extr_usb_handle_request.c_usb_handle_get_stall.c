
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_endpoint {int is_stalled; } ;
struct usb_device {int bus; } ;


 int USB_BUS_LOCK (int ) ;
 int USB_BUS_UNLOCK (int ) ;
 struct usb_endpoint* usbd_get_ep_by_addr (struct usb_device*,int ) ;

__attribute__((used)) static uint8_t
usb_handle_get_stall(struct usb_device *udev, uint8_t ea_val)
{
 struct usb_endpoint *ep;
 uint8_t halted;

 ep = usbd_get_ep_by_addr(udev, ea_val);
 if (ep == ((void*)0)) {

  return (0);
 }
 USB_BUS_LOCK(udev->bus);
 halted = ep->is_stalled;
 USB_BUS_UNLOCK(udev->bus);

 return (halted);
}
