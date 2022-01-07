
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_endpoint_descriptor {int bmAttributes; int bEndpointAddress; } ;
struct usb_endpoint {int * methods; } ;
struct TYPE_2__ {int usb_mode; } ;
struct usb_device {scalar_t__ device_index; scalar_t__ speed; TYPE_1__ flags; int address; int bus; } ;
struct atmegadci_softc {scalar_t__ sc_rt_addr; } ;


 struct atmegadci_softc* ATMEGA_BUS2SC (int ) ;
 int DPRINTFN (int,char*,struct usb_endpoint*,int ,int ,int ,scalar_t__,scalar_t__) ;
 int UE_ISOCHRONOUS ;
 int UE_XFERTYPE ;
 scalar_t__ USB_SPEED_FULL ;
 int atmegadci_device_isoc_fs_methods ;
 int atmegadci_device_non_isoc_methods ;

__attribute__((used)) static void
atmegadci_ep_init(struct usb_device *udev, struct usb_endpoint_descriptor *edesc,
    struct usb_endpoint *ep)
{
 struct atmegadci_softc *sc = ATMEGA_BUS2SC(udev->bus);

 DPRINTFN(2, "endpoint=%p, addr=%d, endpt=%d, mode=%d (%d,%d)\n",
     ep, udev->address,
     edesc->bEndpointAddress, udev->flags.usb_mode,
     sc->sc_rt_addr, udev->device_index);

 if (udev->device_index != sc->sc_rt_addr) {

  if (udev->speed != USB_SPEED_FULL) {

   return;
  }
  if ((edesc->bmAttributes & UE_XFERTYPE) == UE_ISOCHRONOUS)
   ep->methods = &atmegadci_device_isoc_fs_methods;
  else
   ep->methods = &atmegadci_device_non_isoc_methods;
 }
}
