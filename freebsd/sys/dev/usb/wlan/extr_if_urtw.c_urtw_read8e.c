
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct urtw_softc {int dummy; } ;


 int URTW_8187_GETREGS_REQ ;
 int USETW (int ,int) ;
 int UT_READ_VENDOR_DEVICE ;
 int urtw_do_request (struct urtw_softc*,struct usb_device_request*,int *) ;

__attribute__((used)) static usb_error_t
urtw_read8e(struct urtw_softc *sc, int val, uint8_t *data)
{
 struct usb_device_request req;
 usb_error_t error;

 req.bmRequestType = UT_READ_VENDOR_DEVICE;
 req.bRequest = URTW_8187_GETREGS_REQ;
 USETW(req.wValue, val | 0xfe00);
 USETW(req.wIndex, 0);
 USETW(req.wLength, sizeof(uint8_t));

 error = urtw_do_request(sc, &req, data);
 return (error);
}
