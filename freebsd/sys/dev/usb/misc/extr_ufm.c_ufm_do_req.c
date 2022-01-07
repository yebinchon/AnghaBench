
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct ufm_softc {int sc_udev; } ;


 int ENXIO ;
 int USETW (int ,int) ;
 int UT_READ_VENDOR_DEVICE ;
 int usbd_do_request (int ,int *,struct usb_device_request*,int *) ;

__attribute__((used)) static int
ufm_do_req(struct ufm_softc *sc, uint8_t request,
    uint16_t value, uint16_t index, uint8_t *retbuf)
{
 int error;

 struct usb_device_request req;
 uint8_t buf[1];

 req.bmRequestType = UT_READ_VENDOR_DEVICE;
 req.bRequest = request;
 USETW(req.wValue, value);
 USETW(req.wIndex, index);
 USETW(req.wLength, 1);

 error = usbd_do_request(sc->sc_udev, ((void*)0), &req, buf);

 if (retbuf) {
  *retbuf = buf[0];
 }
 if (error) {
  return (ENXIO);
 }
 return (0);
}
