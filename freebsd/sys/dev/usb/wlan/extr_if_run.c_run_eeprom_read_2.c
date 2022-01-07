
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
typedef TYPE_1__ usb_device_request_t ;
typedef int uint16_t ;
typedef int tmp ;
struct run_softc {int sc_mtx; int sc_udev; } ;


 int RT2870_EEPROM_READ ;
 int USETW (int ,int) ;
 int UT_READ_VENDOR_DEVICE ;
 int le16toh (int) ;
 int usbd_do_request (int ,int *,TYPE_1__*,int*) ;

__attribute__((used)) static int
run_eeprom_read_2(struct run_softc *sc, uint16_t addr, uint16_t *val)
{
 usb_device_request_t req;
 uint16_t tmp;
 int error;

 addr *= 2;
 req.bmRequestType = UT_READ_VENDOR_DEVICE;
 req.bRequest = RT2870_EEPROM_READ;
 USETW(req.wValue, 0);
 USETW(req.wIndex, addr);
 USETW(req.wLength, sizeof(tmp));

 error = usbd_do_request(sc->sc_udev, &sc->sc_mtx, &req, &tmp);
 if (error == 0)
  *val = le16toh(tmp);
 else
  *val = 0xffff;
 return (error);
}
