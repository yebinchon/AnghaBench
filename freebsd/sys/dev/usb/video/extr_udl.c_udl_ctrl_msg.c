
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wLength; int wValue; int wIndex; void* bRequest; void* bmRequestType; } ;
typedef TYPE_1__ usb_device_request_t ;
typedef void* uint8_t ;
typedef size_t uint16_t ;
struct udl_softc {int sc_udev; } ;


 int DPRINTF (char*,int ) ;
 int USB_DEFAULT_TIMEOUT ;
 int USETW (int ,size_t) ;
 int usbd_do_request_flags (int ,int *,TYPE_1__*,void**,int ,int *,int ) ;
 int usbd_errstr (int) ;

__attribute__((used)) static int
udl_ctrl_msg(struct udl_softc *sc, uint8_t rt, uint8_t r,
    uint16_t index, uint16_t value, uint8_t *buf, size_t len)
{
 usb_device_request_t req;
 int error;

 req.bmRequestType = rt;
 req.bRequest = r;
 USETW(req.wIndex, index);
 USETW(req.wValue, value);
 USETW(req.wLength, len);

 error = usbd_do_request_flags(sc->sc_udev, ((void*)0),
     &req, buf, 0, ((void*)0), USB_DEFAULT_TIMEOUT);

 DPRINTF("%s\n", usbd_errstr(error));

 return (error);
}
