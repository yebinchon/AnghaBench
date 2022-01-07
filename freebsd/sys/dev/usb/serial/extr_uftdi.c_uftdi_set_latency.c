
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int wValue; int wLength; int wIndex; int bRequest; int bmRequestType; } ;
typedef TYPE_2__ usb_device_request_t ;
struct TYPE_4__ {int sc_portno; } ;
struct uftdi_softc {int sc_mtx; int sc_udev; TYPE_1__ sc_ucom; } ;
struct ucom_softc {struct uftdi_softc* sc_parent; } ;


 int DPRINTFN (int,char*) ;
 int FTDI_SIO_SET_LATENCY ;
 int USB_ERR_INVAL ;
 int USETW (int ,int ) ;
 int USETW2 (int ,int ,int) ;
 int UT_WRITE_VENDOR_DEVICE ;
 int usbd_do_request (int ,int *,TYPE_2__*,int *) ;

__attribute__((used)) static int
uftdi_set_latency(struct ucom_softc *ucom, int latency)
{
 struct uftdi_softc *sc = ucom->sc_parent;
 usb_device_request_t req;

 DPRINTFN(2, "\n");

 if (latency < 0 || latency > 255)
  return (USB_ERR_INVAL);

 req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
 req.bRequest = FTDI_SIO_SET_LATENCY;

 USETW(req.wIndex, sc->sc_ucom.sc_portno);
 USETW(req.wLength, 0);
 USETW2(req.wValue, 0, latency);

 return (usbd_do_request(sc->sc_udev, &sc->sc_mtx, &req, ((void*)0)));
}
