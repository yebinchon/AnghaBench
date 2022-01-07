
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef void* uint8_t ;
typedef int uint16_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; void* bRequest; void* bmRequestType; } ;
struct uled_softc {int sc_mtx; int sc_udev; } ;


 int USETW (int ,int ) ;
 int usbd_do_request_flags (int ,int *,struct usb_device_request*,void*,int ,int *,int) ;

__attribute__((used)) static usb_error_t
uled_ctrl_msg(struct uled_softc *sc, uint8_t rt, uint8_t reqno,
    uint16_t value, uint16_t index, void *buf, uint16_t buflen)
{
 struct usb_device_request req;

 req.bmRequestType = rt;
 req.bRequest = reqno;
 USETW(req.wValue, value);
 USETW(req.wIndex, index);
 USETW(req.wLength, buflen);

 return (usbd_do_request_flags(sc->sc_udev, &sc->sc_mtx, &req, buf,
     0, ((void*)0), 2000));
}
