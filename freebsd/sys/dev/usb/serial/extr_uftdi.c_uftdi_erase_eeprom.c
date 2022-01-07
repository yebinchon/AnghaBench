
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int usb_error_t ;
struct TYPE_3__ {int wValue; int wLength; int wIndex; int bRequest; int bmRequestType; } ;
typedef TYPE_1__ usb_device_request_t ;
struct uftdi_softc {int sc_mtx; int sc_udev; } ;
struct ucom_softc {struct uftdi_softc* sc_parent; } ;


 int DPRINTFN (int,char*) ;
 int EINVAL ;
 int FTDI_SIO_ERASE_EEPROM ;
 int UFTDI_CONFIRM_ERASE ;
 int USETW (int ,int ) ;
 int UT_WRITE_VENDOR_DEVICE ;
 int usbd_do_request (int ,int *,TYPE_1__*,int *) ;

__attribute__((used)) static int
uftdi_erase_eeprom(struct ucom_softc *ucom, int confirmation)
{
 struct uftdi_softc *sc = ucom->sc_parent;
 usb_device_request_t req;
 usb_error_t err;

 DPRINTFN(2, "\n");


 if (confirmation != UFTDI_CONFIRM_ERASE)
  return (EINVAL);

 req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
 req.bRequest = FTDI_SIO_ERASE_EEPROM;
 USETW(req.wIndex, 0);
 USETW(req.wLength, 0);
 USETW(req.wValue, 0);
 err = usbd_do_request(sc->sc_udev, &sc->sc_mtx, &req, ((void*)0));

 return (err);
}
