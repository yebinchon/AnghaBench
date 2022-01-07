
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct uss820dci_softc {int sc_bus; } ;
struct usb_endpoint {TYPE_1__* edesc; } ;
struct usb_device {int bus; } ;
struct TYPE_2__ {int bEndpointAddress; int bmAttributes; } ;


 int DPRINTFN (int,char*,struct usb_endpoint*) ;
 int MA_OWNED ;
 int UE_ADDR ;
 int UE_CONTROL ;
 int UE_DIR_IN ;
 int UE_DIR_OUT ;
 int UE_XFERTYPE ;
 int USB_BUS_LOCK_ASSERT (int ,int ) ;
 int USB_BUS_SPIN_LOCK (int *) ;
 int USB_BUS_SPIN_UNLOCK (int *) ;
 struct uss820dci_softc* USS820_DCI_BUS2SC (int ) ;
 int USS820_EPCON ;
 int USS820_EPCON_RXSTL ;
 int USS820_EPCON_TXSTL ;
 int USS820_EPINDEX ;
 int USS820_WRITE_1 (struct uss820dci_softc*,int ,int) ;
 int uss820dci_update_shared_1 (struct uss820dci_softc*,int ,int,int) ;

__attribute__((used)) static void
uss820dci_set_stall(struct usb_device *udev,
    struct usb_endpoint *ep, uint8_t *did_stall)
{
 struct uss820dci_softc *sc;
 uint8_t ep_no;
 uint8_t ep_type;
 uint8_t ep_dir;
 uint8_t temp;

 USB_BUS_LOCK_ASSERT(udev->bus, MA_OWNED);

 DPRINTFN(5, "endpoint=%p\n", ep);


 sc = USS820_DCI_BUS2SC(udev->bus);
 ep_no = (ep->edesc->bEndpointAddress & UE_ADDR);
 ep_dir = (ep->edesc->bEndpointAddress & (UE_DIR_IN | UE_DIR_OUT));
 ep_type = (ep->edesc->bmAttributes & UE_XFERTYPE);

 if (ep_type == UE_CONTROL) {

  return;
 }
 USB_BUS_SPIN_LOCK(&sc->sc_bus);
 USS820_WRITE_1(sc, USS820_EPINDEX, ep_no);

 if (ep_dir == UE_DIR_IN) {
  temp = USS820_EPCON_TXSTL;
 } else {
  temp = USS820_EPCON_RXSTL;
 }
 uss820dci_update_shared_1(sc, USS820_EPCON, 0xFF, temp);
 USB_BUS_SPIN_UNLOCK(&sc->sc_bus);
}
