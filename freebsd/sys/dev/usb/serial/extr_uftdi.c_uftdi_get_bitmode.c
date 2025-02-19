
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int wValue; int wLength; int wIndex; int bRequest; int bmRequestType; } ;
typedef TYPE_2__ usb_device_request_t ;
typedef int uint8_t ;
struct TYPE_4__ {int sc_portno; } ;
struct uftdi_softc {int sc_mtx; int sc_udev; int sc_bitmode; TYPE_1__ sc_ucom; } ;
struct ucom_softc {struct uftdi_softc* sc_parent; } ;


 int DPRINTFN (int,char*) ;
 int FTDI_SIO_GET_BITMODE ;
 int USETW (int ,int) ;
 int UT_READ_VENDOR_DEVICE ;
 int usbd_do_request (int ,int *,TYPE_2__*,int *) ;

__attribute__((used)) static int
uftdi_get_bitmode(struct ucom_softc *ucom, uint8_t *bitmode, uint8_t *iomask)
{
 struct uftdi_softc *sc = ucom->sc_parent;
 usb_device_request_t req;

 DPRINTFN(2, "\n");

 req.bmRequestType = UT_READ_VENDOR_DEVICE;
 req.bRequest = FTDI_SIO_GET_BITMODE;

 USETW(req.wIndex, sc->sc_ucom.sc_portno);
 USETW(req.wLength, 1);
 USETW(req.wValue, 0);

 *bitmode = sc->sc_bitmode;
 return (usbd_do_request(sc->sc_udev, &sc->sc_mtx, &req, iomask));
}
