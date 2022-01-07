
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct rum_softc {int dummy; } ;


 int RT2573_MCU_CNTL ;
 int USETW (int ,int) ;
 int UT_WRITE_VENDOR_DEVICE ;
 int rum_do_request (struct rum_softc*,struct usb_device_request*,int *) ;

__attribute__((used)) static usb_error_t
rum_do_mcu_request(struct rum_softc *sc, int request)
{
 struct usb_device_request req;

 req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
 req.bRequest = RT2573_MCU_CNTL;
 USETW(req.wValue, request);
 USETW(req.wIndex, 0);
 USETW(req.wLength, 0);

 return (rum_do_request(sc, &req, ((void*)0)));
}
