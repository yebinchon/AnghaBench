
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct uslcom_softc {int sc_iface_no; int sc_udev; } ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
typedef int partnum ;


 int DPRINTF (char*) ;
 int USETW (int ,int) ;
 int USLCOM_GET_PARTNUM ;
 int USLCOM_READ ;
 int USLCOM_VENDOR_SPECIFIC ;
 scalar_t__ usbd_do_request_flags (int ,int *,struct usb_device_request*,scalar_t__*,int ,int *,int) ;

__attribute__((used)) static uint8_t
uslcom_get_partnum(struct uslcom_softc *sc)
{
 struct usb_device_request req;
 uint8_t partnum;


 partnum = 0;
 req.bmRequestType = USLCOM_READ;
 req.bRequest = USLCOM_VENDOR_SPECIFIC;
 USETW(req.wValue, USLCOM_GET_PARTNUM);
 USETW(req.wIndex, sc->sc_iface_no);
 USETW(req.wLength, sizeof(partnum));

 if (usbd_do_request_flags(sc->sc_udev, ((void*)0),
     &req, &partnum, 0, ((void*)0), 1000)) {
  DPRINTF("GET_PARTNUM failed\n");
 }

 return(partnum);
}
