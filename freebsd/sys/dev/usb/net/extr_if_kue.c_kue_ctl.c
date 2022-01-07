
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; scalar_t__ bRequest; int bmRequestType; } ;
struct kue_softc {int dummy; } ;


 scalar_t__ KUE_CTL_WRITE ;
 int USETW (int ,int) ;
 int UT_READ_VENDOR_DEVICE ;
 int UT_WRITE_VENDOR_DEVICE ;
 int kue_do_request (struct kue_softc*,struct usb_device_request*,void*) ;

__attribute__((used)) static int
kue_ctl(struct kue_softc *sc, uint8_t rw, uint8_t breq,
    uint16_t val, void *data, int len)
{
 struct usb_device_request req;

 if (rw == KUE_CTL_WRITE)
  req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
 else
  req.bmRequestType = UT_READ_VENDOR_DEVICE;


 req.bRequest = breq;
 USETW(req.wValue, val);
 USETW(req.wIndex, 0);
 USETW(req.wLength, len);

 return (kue_do_request(sc, &req, data));
}
