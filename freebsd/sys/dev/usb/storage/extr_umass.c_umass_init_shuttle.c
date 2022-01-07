
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_device_request {int bRequest; int wLength; scalar_t__* wIndex; int wValue; int bmRequestType; } ;
struct umass_softc {int sc_udev; scalar_t__ sc_iface_no; } ;
typedef int status ;


 int DPRINTF (struct umass_softc*,int ,char*,int ,int ) ;
 int UDMASS_GEN ;
 int USETW (int ,int) ;
 int UT_READ_VENDOR_DEVICE ;
 int usbd_do_request (int ,int *,struct usb_device_request*,int **) ;

__attribute__((used)) static void
umass_init_shuttle(struct umass_softc *sc)
{
 struct usb_device_request req;
 uint8_t status[2] = {0, 0};





 req.bmRequestType = UT_READ_VENDOR_DEVICE;
 req.bRequest = 1;
 USETW(req.wValue, 0);
 req.wIndex[0] = sc->sc_iface_no;
 req.wIndex[1] = 0;
 USETW(req.wLength, sizeof(status));
 usbd_do_request(sc->sc_udev, ((void*)0), &req, &status);

 DPRINTF(sc, UDMASS_GEN, "Shuttle init returned 0x%02x%02x\n",
     status[0], status[1]);
}
