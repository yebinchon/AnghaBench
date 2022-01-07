
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
typedef TYPE_1__ usb_device_request_t ;
typedef int uint8_t ;
typedef int uint16_t ;
struct rsu_softc {int dummy; } ;


 int R92S_REQ_REGS ;
 int USETW (int ,int) ;
 int UT_READ_VENDOR_DEVICE ;
 int rsu_do_request (struct rsu_softc*,TYPE_1__*,int *) ;

__attribute__((used)) static int
rsu_read_region_1(struct rsu_softc *sc, uint16_t addr, uint8_t *buf,
    int len)
{
 usb_device_request_t req;

 req.bmRequestType = UT_READ_VENDOR_DEVICE;
 req.bRequest = R92S_REQ_REGS;
 USETW(req.wValue, addr);
 USETW(req.wIndex, 0);
 USETW(req.wLength, len);

 return (rsu_do_request(sc, &req, buf));
}
