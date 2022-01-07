
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
struct TYPE_2__ {int ic_macaddr; } ;
struct zyd_softc {int sc_dev; TYPE_1__ sc_ic; } ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;


 int IEEE80211_ADDR_LEN ;
 int USETW (int ,int ) ;
 int UT_READ_VENDOR_DEVICE ;
 int ZYD_EEPROM_MAC_ADDR_P1 ;
 int ZYD_READFWDATAREQ ;
 int device_printf (int ,char*,int ) ;
 int usbd_errstr (scalar_t__) ;
 scalar_t__ zyd_do_request (struct zyd_softc*,struct usb_device_request*,int ) ;

__attribute__((used)) static int
zyd_get_macaddr(struct zyd_softc *sc)
{
 struct usb_device_request req;
 usb_error_t error;

 req.bmRequestType = UT_READ_VENDOR_DEVICE;
 req.bRequest = ZYD_READFWDATAREQ;
 USETW(req.wValue, ZYD_EEPROM_MAC_ADDR_P1);
 USETW(req.wIndex, 0);
 USETW(req.wLength, IEEE80211_ADDR_LEN);

 error = zyd_do_request(sc, &req, sc->sc_ic.ic_macaddr);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not read EEPROM: %s\n",
      usbd_errstr(error));
 }

 return (error);
}
