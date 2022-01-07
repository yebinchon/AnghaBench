
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_endpoint_ext {int trb_halted; scalar_t__ trb_running; } ;
struct usb_endpoint {int edesc; } ;
struct TYPE_2__ {scalar_t__ usb_mode; } ;
struct usb_device {int bus; int * parent_hub; TYPE_1__ flags; } ;


 int DPRINTF (char*) ;
 int USB_BUS_LOCK (int ) ;
 int USB_BUS_UNLOCK (int ) ;
 scalar_t__ USB_MODE_HOST ;
 struct xhci_endpoint_ext* xhci_get_endpoint_ext (struct usb_device*,int ) ;

__attribute__((used)) static void
xhci_ep_clear_stall(struct usb_device *udev, struct usb_endpoint *ep)
{
 struct xhci_endpoint_ext *pepext;

 DPRINTF("\n");

 if (udev->flags.usb_mode != USB_MODE_HOST) {

  return;
 }
 if (udev->parent_hub == ((void*)0)) {

  return;
 }

 pepext = xhci_get_endpoint_ext(udev, ep->edesc);

 USB_BUS_LOCK(udev->bus);
 pepext->trb_halted = 1;
 pepext->trb_running = 0;
 USB_BUS_UNLOCK(udev->bus);
}
