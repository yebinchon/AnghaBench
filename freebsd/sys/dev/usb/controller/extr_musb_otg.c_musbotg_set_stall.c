
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct usb_endpoint {TYPE_1__* edesc; } ;
struct usb_device {int bus; } ;
struct musbotg_softc {int dummy; } ;
struct TYPE_2__ {int bEndpointAddress; } ;


 int DPRINTFN (int,char*,struct usb_endpoint*) ;
 int MA_OWNED ;
 int MUSB2_MASK_CSRL_RXSENDSTALL ;
 int MUSB2_MASK_CSRL_TXSENDSTALL ;
 int MUSB2_REG_EPINDEX ;
 int MUSB2_REG_RXCSRL ;
 int MUSB2_REG_TXCSRL ;
 int MUSB2_WRITE_1 (struct musbotg_softc*,int ,int) ;
 struct musbotg_softc* MUSBOTG_BUS2SC (int ) ;
 int UE_ADDR ;
 int UE_DIR_IN ;
 int USB_BUS_LOCK_ASSERT (int ,int ) ;

__attribute__((used)) static void
musbotg_set_stall(struct usb_device *udev,
    struct usb_endpoint *ep, uint8_t *did_stall)
{
 struct musbotg_softc *sc;
 uint8_t ep_no;

 USB_BUS_LOCK_ASSERT(udev->bus, MA_OWNED);

 DPRINTFN(4, "endpoint=%p\n", ep);


 sc = MUSBOTG_BUS2SC(udev->bus);

 ep_no = (ep->edesc->bEndpointAddress & UE_ADDR);


 MUSB2_WRITE_1(sc, MUSB2_REG_EPINDEX, ep_no);

 if (ep->edesc->bEndpointAddress & UE_DIR_IN) {
  MUSB2_WRITE_1(sc, MUSB2_REG_TXCSRL,
      MUSB2_MASK_CSRL_TXSENDSTALL);
 } else {
  MUSB2_WRITE_1(sc, MUSB2_REG_RXCSRL,
      MUSB2_MASK_CSRL_RXSENDSTALL);
 }
}
