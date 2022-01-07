
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
typedef TYPE_1__ usb_device_request_t ;
struct run_softc {int sc_mtx; int sc_udev; } ;


 int RT2870_RESET ;
 int USETW (int ,int) ;
 int UT_WRITE_VENDOR_DEVICE ;
 int usbd_do_request (int ,int *,TYPE_1__*,int *) ;

__attribute__((used)) static int
run_reset(struct run_softc *sc)
{
 usb_device_request_t req;

 req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
 req.bRequest = RT2870_RESET;
 USETW(req.wValue, 1);
 USETW(req.wIndex, 0);
 USETW(req.wLength, 0);
 return (usbd_do_request(sc->sc_udev, &sc->sc_mtx, &req, ((void*)0)));
}
