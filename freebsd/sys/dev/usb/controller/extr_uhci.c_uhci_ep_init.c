
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ sc_addr; } ;
typedef TYPE_2__ uhci_softc_t ;
struct usb_endpoint_descriptor {int bmAttributes; int bEndpointAddress; } ;
struct usb_endpoint {int * methods; } ;
struct TYPE_4__ {int usb_mode; } ;
struct usb_device {scalar_t__ device_index; int speed; TYPE_1__ flags; int address; int bus; } ;


 int DPRINTFN (int,char*,struct usb_endpoint*,int ,int ,int ,scalar_t__) ;




 int UE_XFERTYPE ;
 TYPE_2__* UHCI_BUS2SC (int ) ;
 int USB_SPEED_FULL ;
 int uhci_device_bulk_methods ;
 int uhci_device_ctrl_methods ;
 int uhci_device_intr_methods ;
 int uhci_device_isoc_methods ;

__attribute__((used)) static void
uhci_ep_init(struct usb_device *udev, struct usb_endpoint_descriptor *edesc,
    struct usb_endpoint *ep)
{
 uhci_softc_t *sc = UHCI_BUS2SC(udev->bus);

 DPRINTFN(2, "endpoint=%p, addr=%d, endpt=%d, mode=%d (%d)\n",
     ep, udev->address,
     edesc->bEndpointAddress, udev->flags.usb_mode,
     sc->sc_addr);

 if (udev->device_index != sc->sc_addr) {
  switch (edesc->bmAttributes & UE_XFERTYPE) {
  case 130:
   ep->methods = &uhci_device_ctrl_methods;
   break;
  case 129:
   ep->methods = &uhci_device_intr_methods;
   break;
  case 128:
   if (udev->speed == USB_SPEED_FULL) {
    ep->methods = &uhci_device_isoc_methods;
   }
   break;
  case 131:
   ep->methods = &uhci_device_bulk_methods;
   break;
  default:

   break;
  }
 }
}
