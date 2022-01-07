
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_endpoint_descriptor {int bEndpointAddress; int bmAttributes; } ;
struct usb_endpoint {struct usb_endpoint_descriptor* edesc; } ;
struct TYPE_2__ {scalar_t__ usb_mode; } ;
struct usb_device {int bus; TYPE_1__ flags; } ;
struct atmegadci_softc {int dummy; } ;


 struct atmegadci_softc* ATMEGA_BUS2SC (int ) ;
 int DPRINTFN (int,char*,struct usb_endpoint*) ;
 int MA_OWNED ;
 int UE_ADDR ;
 int UE_DIR_IN ;
 int UE_DIR_OUT ;
 int UE_XFERTYPE ;
 int USB_BUS_LOCK_ASSERT (int ,int ) ;
 scalar_t__ USB_MODE_DEVICE ;
 int atmegadci_clear_stall_sub (struct atmegadci_softc*,int,int,int) ;

__attribute__((used)) static void
atmegadci_clear_stall(struct usb_device *udev, struct usb_endpoint *ep)
{
 struct atmegadci_softc *sc;
 struct usb_endpoint_descriptor *ed;

 DPRINTFN(5, "endpoint=%p\n", ep);

 USB_BUS_LOCK_ASSERT(udev->bus, MA_OWNED);


 if (udev->flags.usb_mode != USB_MODE_DEVICE) {

  return;
 }

 sc = ATMEGA_BUS2SC(udev->bus);


 ed = ep->edesc;


 atmegadci_clear_stall_sub(sc,
     (ed->bEndpointAddress & UE_ADDR),
     (ed->bmAttributes & UE_XFERTYPE),
     (ed->bEndpointAddress & (UE_DIR_IN | UE_DIR_OUT)));
}
