
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
typedef TYPE_1__ usb_device_request_t ;
typedef int uint8_t ;
typedef int uint16_t ;
struct rtwn_softc {int dummy; } ;


 int R92C_REQ_REGS ;
 int USETW (int ,int) ;
 int UT_WRITE_VENDOR_DEVICE ;
 int rtwn_do_request (struct rtwn_softc*,TYPE_1__*,int *) ;

int
rtwn_usb_write_region_1(struct rtwn_softc *sc, uint16_t addr, uint8_t *buf,
    int len)
{
 usb_device_request_t req;

 req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
 req.bRequest = R92C_REQ_REGS;
 USETW(req.wValue, addr);
 USETW(req.wIndex, 0);
 USETW(req.wLength, len);
 return (rtwn_do_request(sc, &req, buf));
}
