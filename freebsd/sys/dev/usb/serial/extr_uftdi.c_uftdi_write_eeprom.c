
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
struct TYPE_3__ {int wValue; int wLength; int wIndex; int bRequest; int bmRequestType; } ;
typedef TYPE_1__ usb_device_request_t ;
typedef size_t uint16_t ;
struct uftdi_softc {int sc_mtx; int sc_udev; } ;
struct uftdi_eeio {int offset; int length; size_t* data; } ;
struct ucom_softc {struct uftdi_softc* sc_parent; } ;


 int DPRINTFN (int,char*) ;
 int EINVAL ;
 int FTDI_SIO_WRITE_EEPROM ;
 scalar_t__ USB_ERR_NORMAL_COMPLETION ;
 int USETW (int ,size_t) ;
 int UT_WRITE_VENDOR_DEVICE ;
 scalar_t__ usbd_do_request (int ,int *,TYPE_1__*,int *) ;

__attribute__((used)) static int
uftdi_write_eeprom(struct ucom_softc *ucom, struct uftdi_eeio *eeio)
{
 struct uftdi_softc *sc = ucom->sc_parent;
 usb_device_request_t req;
 usb_error_t err;
 uint16_t widx, wlength, woffset;

 DPRINTFN(3, "\n");


 if ((eeio->offset | eeio->length) & 0x01)
  return (EINVAL);

 woffset = eeio->offset / 2U;
 wlength = eeio->length / 2U;
 for (widx = 0; widx < wlength; widx++) {
  req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
  req.bRequest = FTDI_SIO_WRITE_EEPROM;
  USETW(req.wIndex, widx + woffset);
  USETW(req.wLength, 0);
  USETW(req.wValue, eeio->data[widx]);
  err = usbd_do_request(sc->sc_udev, &sc->sc_mtx, &req, ((void*)0));
  if (err != USB_ERR_NORMAL_COMPLETION)
   return (err);
 }
 return (USB_ERR_NORMAL_COMPLETION);
}
