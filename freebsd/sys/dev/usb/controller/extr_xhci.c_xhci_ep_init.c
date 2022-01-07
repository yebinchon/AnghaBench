
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_endpoint_ext {int trb_halted; scalar_t__ trb_running; } ;
struct usb_endpoint_descriptor {int bEndpointAddress; } ;
struct usb_endpoint {int * methods; } ;
struct TYPE_2__ {int usb_mode; } ;
struct usb_device {int bus; int * parent_hub; TYPE_1__ flags; int address; } ;


 int DPRINTFN (int,char*,struct usb_endpoint*,int ,int ,int ) ;
 int USB_BUS_LOCK (int ) ;
 int USB_BUS_UNLOCK (int ) ;
 int xhci_device_generic_methods ;
 struct xhci_endpoint_ext* xhci_get_endpoint_ext (struct usb_device*,struct usb_endpoint_descriptor*) ;

__attribute__((used)) static void
xhci_ep_init(struct usb_device *udev, struct usb_endpoint_descriptor *edesc,
    struct usb_endpoint *ep)
{
 struct xhci_endpoint_ext *pepext;

 DPRINTFN(2, "endpoint=%p, addr=%d, endpt=%d, mode=%d\n",
     ep, udev->address, edesc->bEndpointAddress, udev->flags.usb_mode);

 if (udev->parent_hub == ((void*)0)) {

  return;
 }

 ep->methods = &xhci_device_generic_methods;

 pepext = xhci_get_endpoint_ext(udev, edesc);

 USB_BUS_LOCK(udev->bus);
 pepext->trb_halted = 1;
 pepext->trb_running = 0;
 USB_BUS_UNLOCK(udev->bus);
}
