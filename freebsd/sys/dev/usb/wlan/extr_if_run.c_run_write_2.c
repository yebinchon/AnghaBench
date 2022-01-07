
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
typedef TYPE_1__ usb_device_request_t ;
typedef int uint16_t ;
struct run_softc {int dummy; } ;


 int RT2870_WRITE_2 ;
 int USETW (int ,int ) ;
 int UT_WRITE_VENDOR_DEVICE ;
 int run_do_request (struct run_softc*,TYPE_1__*,int *) ;

__attribute__((used)) static int
run_write_2(struct run_softc *sc, uint16_t reg, uint16_t val)
{
 usb_device_request_t req;

 req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
 req.bRequest = RT2870_WRITE_2;
 USETW(req.wValue, val);
 USETW(req.wIndex, reg);
 USETW(req.wLength, 0);

 return (run_do_request(sc, &req, ((void*)0)));
}
