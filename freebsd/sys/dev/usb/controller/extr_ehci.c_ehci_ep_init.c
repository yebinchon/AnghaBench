
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_endpoint_descriptor {int bmAttributes; int bEndpointAddress; } ;
struct usb_endpoint {int * methods; } ;
struct TYPE_5__ {int usb_mode; } ;
struct usb_device {scalar_t__ device_index; scalar_t__ speed; scalar_t__ hs_hub_addr; scalar_t__ hs_port_no; TYPE_2__* parent_hs_hub; TYPE_1__ flags; int address; int bus; } ;
struct TYPE_7__ {scalar_t__ sc_addr; } ;
typedef TYPE_3__ ehci_softc_t ;
struct TYPE_6__ {int * hub; } ;


 int DPRINTFN (int,char*,struct usb_endpoint*,int ,int ,int ,scalar_t__) ;
 TYPE_3__* EHCI_BUS2SC (int ) ;




 int UE_XFERTYPE ;
 scalar_t__ USB_SPEED_FULL ;
 scalar_t__ USB_SPEED_HIGH ;
 int ehci_device_bulk_methods ;
 int ehci_device_ctrl_methods ;
 int ehci_device_intr_methods ;
 int ehci_device_isoc_fs_methods ;
 int ehci_device_isoc_hs_methods ;

__attribute__((used)) static void
ehci_ep_init(struct usb_device *udev, struct usb_endpoint_descriptor *edesc,
    struct usb_endpoint *ep)
{
 ehci_softc_t *sc = EHCI_BUS2SC(udev->bus);

 DPRINTFN(2, "endpoint=%p, addr=%d, endpt=%d, mode=%d (%d)\n",
     ep, udev->address,
     edesc->bEndpointAddress, udev->flags.usb_mode,
     sc->sc_addr);

 if (udev->device_index != sc->sc_addr) {

  if ((udev->speed != USB_SPEED_HIGH) &&
      ((udev->hs_hub_addr == 0) ||
      (udev->hs_port_no == 0) ||
      (udev->parent_hs_hub == ((void*)0)) ||
      (udev->parent_hs_hub->hub == ((void*)0)))) {

   goto done;
  }
  switch (edesc->bmAttributes & UE_XFERTYPE) {
  case 130:
   ep->methods = &ehci_device_ctrl_methods;
   break;
  case 129:
   ep->methods = &ehci_device_intr_methods;
   break;
  case 128:
   if (udev->speed == USB_SPEED_HIGH) {
    ep->methods = &ehci_device_isoc_hs_methods;
   } else if (udev->speed == USB_SPEED_FULL) {
    ep->methods = &ehci_device_isoc_fs_methods;
   }
   break;
  case 131:
   ep->methods = &ehci_device_bulk_methods;
   break;
  default:

   break;
  }
 }
done:
 return;
}
