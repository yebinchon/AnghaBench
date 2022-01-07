
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int usb_error_t ;
struct TYPE_5__ {int bmRequestType; int bRequest; int wLength; int wIndex; int wValue; } ;
typedef TYPE_2__ usb_device_request_t ;
typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {int ue_udev; } ;
struct urndis_softc {int sc_mtx; TYPE_1__ sc_ue; } ;


 int USB_SHORT_XFER_OK ;
 int USETW (int ,int ) ;
 int UT_READ ;
 int usbd_do_request_flags (int ,int *,TYPE_2__*,void*,int ,int *,int) ;

__attribute__((used)) static usb_error_t
urndis_ctrl_msg(struct urndis_softc *sc, uint8_t rt, uint8_t r,
    uint16_t index, uint16_t value, void *buf, uint16_t buflen)
{
 usb_device_request_t req;

 req.bmRequestType = rt;
 req.bRequest = r;
 USETW(req.wValue, value);
 USETW(req.wIndex, index);
 USETW(req.wLength, buflen);

 return (usbd_do_request_flags(sc->sc_ue.ue_udev,
     &sc->sc_mtx, &req, buf, (rt & UT_READ) ?
     USB_SHORT_XFER_OK : 0, ((void*)0), 2000 ));
}
