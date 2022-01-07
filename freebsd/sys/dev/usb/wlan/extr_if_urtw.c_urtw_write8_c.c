
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct urtw_softc {int dummy; } ;


 int URTW_8187_SETREGS_REQ ;
 int URTW_ASSERT_LOCKED (struct urtw_softc*) ;
 int USETW (int ,int) ;
 int UT_WRITE_VENDOR_DEVICE ;
 int urtw_do_request (struct urtw_softc*,struct usb_device_request*,int *) ;

__attribute__((used)) static usb_error_t
urtw_write8_c(struct urtw_softc *sc, int val, uint8_t data)
{
 struct usb_device_request req;

 URTW_ASSERT_LOCKED(sc);

 req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
 req.bRequest = URTW_8187_SETREGS_REQ;
 USETW(req.wValue, (val & 0xff) | 0xff00);
 USETW(req.wIndex, (val >> 8) & 0x3);
 USETW(req.wLength, sizeof(uint8_t));

 return (urtw_do_request(sc, &req, &data));
}
