
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct usb_device_request {scalar_t__* wLength; scalar_t__* wIndex; scalar_t__* wValue; int bRequest; int bmRequestType; } ;
struct ipheth_softc {scalar_t__* sc_data; int sc_carrier_on; scalar_t__ sc_iface_no; } ;


 scalar_t__ IPHETH_CARRIER_ON ;
 int IPHETH_CMD_CARRIER_CHECK ;
 scalar_t__ IPHETH_CTRL_BUF_SIZE ;
 int IPHETH_CTRL_TIMEOUT ;
 int UT_READ_VENDOR_DEVICE ;
 int uether_do_request (struct usb_ether*,struct usb_device_request*,scalar_t__*,int ) ;
 struct ipheth_softc* uether_getsc (struct usb_ether*) ;

__attribute__((used)) static void
ipheth_tick(struct usb_ether *ue)
{
 struct ipheth_softc *sc = uether_getsc(ue);
 struct usb_device_request req;
 int error;

 req.bmRequestType = UT_READ_VENDOR_DEVICE;
 req.bRequest = IPHETH_CMD_CARRIER_CHECK;
 req.wValue[0] = 0;
 req.wValue[1] = 0;
 req.wIndex[0] = sc->sc_iface_no;
 req.wIndex[1] = 0;
 req.wLength[0] = IPHETH_CTRL_BUF_SIZE;
 req.wLength[1] = 0;

 error = uether_do_request(ue, &req, sc->sc_data, IPHETH_CTRL_TIMEOUT);

 if (error)
  return;

 sc->sc_carrier_on =
     (sc->sc_data[0] == IPHETH_CARRIER_ON);
}
