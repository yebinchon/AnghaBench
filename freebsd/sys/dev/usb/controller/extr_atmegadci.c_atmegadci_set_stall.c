
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct usb_endpoint {TYPE_1__* edesc; } ;
struct usb_device {int bus; } ;
struct atmegadci_softc {int dummy; } ;
struct TYPE_2__ {int bEndpointAddress; } ;


 struct atmegadci_softc* ATMEGA_BUS2SC (int ) ;
 int ATMEGA_UECONX ;
 int ATMEGA_UECONX_EPEN ;
 int ATMEGA_UECONX_STALLRQ ;
 int ATMEGA_UENUM ;
 int ATMEGA_WRITE_1 (struct atmegadci_softc*,int ,int) ;
 int DPRINTFN (int,char*,struct usb_endpoint*) ;
 int MA_OWNED ;
 int UE_ADDR ;
 int USB_BUS_LOCK_ASSERT (int ,int ) ;

__attribute__((used)) static void
atmegadci_set_stall(struct usb_device *udev,
    struct usb_endpoint *ep, uint8_t *did_stall)
{
 struct atmegadci_softc *sc;
 uint8_t ep_no;

 USB_BUS_LOCK_ASSERT(udev->bus, MA_OWNED);

 DPRINTFN(5, "endpoint=%p\n", ep);

 sc = ATMEGA_BUS2SC(udev->bus);

 ep_no = (ep->edesc->bEndpointAddress & UE_ADDR);

 ATMEGA_WRITE_1(sc, ATMEGA_UENUM, ep_no);

 ATMEGA_WRITE_1(sc, ATMEGA_UECONX,
     ATMEGA_UECONX_EPEN |
     ATMEGA_UECONX_STALLRQ);
}
