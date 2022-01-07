
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef scalar_t__ uint8_t ;
struct usb_device_request {int wLength; scalar_t__* wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct umass_softc {char* sc_name; int sc_udev; scalar_t__ sc_iface_no; } ;


 int UR_BBB_GET_MAX_LUN ;
 int USETW (int ,int) ;
 int UT_READ_CLASS_INTERFACE ;
 int printf (char*,char*,char*) ;
 scalar_t__ usbd_do_request (int ,int *,struct usb_device_request*,scalar_t__*) ;
 char* usbd_errstr (scalar_t__) ;

__attribute__((used)) static uint8_t
umass_bbb_get_max_lun(struct umass_softc *sc)
{
 struct usb_device_request req;
 usb_error_t err;
 uint8_t buf = 0;


 req.bmRequestType = UT_READ_CLASS_INTERFACE;
 req.bRequest = UR_BBB_GET_MAX_LUN;
 USETW(req.wValue, 0);
 req.wIndex[0] = sc->sc_iface_no;
 req.wIndex[1] = 0;
 USETW(req.wLength, 1);

 err = usbd_do_request(sc->sc_udev, ((void*)0), &req, &buf);
 if (err) {
  buf = 0;


  printf("%s: Get Max Lun not supported (%s)\n",
      sc->sc_name, usbd_errstr(err));
 }
 return (buf);
}
