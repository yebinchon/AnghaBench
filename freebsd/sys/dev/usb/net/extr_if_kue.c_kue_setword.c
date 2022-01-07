
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct kue_softc {int dummy; } ;


 int USETW (int ,int ) ;
 int UT_WRITE_VENDOR_DEVICE ;
 int kue_do_request (struct kue_softc*,struct usb_device_request*,int *) ;

__attribute__((used)) static int
kue_setword(struct kue_softc *sc, uint8_t breq, uint16_t word)
{
 struct usb_device_request req;

 req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
 req.bRequest = breq;
 USETW(req.wValue, word);
 USETW(req.wIndex, 0);
 USETW(req.wLength, 0);

 return (kue_do_request(sc, &req, ((void*)0)));
}
