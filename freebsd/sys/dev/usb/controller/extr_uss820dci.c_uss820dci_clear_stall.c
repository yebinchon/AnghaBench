
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uss820dci_softc {int dummy; } ;
struct usb_endpoint_descriptor {int bEndpointAddress; int bmAttributes; } ;
struct usb_endpoint {struct usb_endpoint_descriptor* edesc; } ;
struct TYPE_2__ {scalar_t__ usb_mode; } ;
struct usb_device {int bus; TYPE_1__ flags; } ;


 int DPRINTFN (int,char*,struct usb_endpoint*) ;
 int MA_OWNED ;
 int UE_ADDR ;
 int UE_DIR_IN ;
 int UE_DIR_OUT ;
 int UE_XFERTYPE ;
 int USB_BUS_LOCK_ASSERT (int ,int ) ;
 scalar_t__ USB_MODE_DEVICE ;
 struct uss820dci_softc* USS820_DCI_BUS2SC (int ) ;
 int uss820dci_clear_stall_sub (struct uss820dci_softc*,int,int,int) ;

__attribute__((used)) static void
uss820dci_clear_stall(struct usb_device *udev, struct usb_endpoint *ep)
{
 struct uss820dci_softc *sc;
 struct usb_endpoint_descriptor *ed;

 USB_BUS_LOCK_ASSERT(udev->bus, MA_OWNED);

 DPRINTFN(5, "endpoint=%p\n", ep);


 if (udev->flags.usb_mode != USB_MODE_DEVICE) {

  return;
 }

 sc = USS820_DCI_BUS2SC(udev->bus);


 ed = ep->edesc;


 uss820dci_clear_stall_sub(sc,
     (ed->bEndpointAddress & UE_ADDR),
     (ed->bmAttributes & UE_XFERTYPE),
     (ed->bEndpointAddress & (UE_DIR_IN | UE_DIR_OUT)));
}
