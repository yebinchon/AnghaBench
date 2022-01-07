
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usie_softc {int * sc_uc_ifnum; int *** sc_uc_xfer; } ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct ucom_softc {size_t sc_subunit; struct usie_softc* sc_parent; } ;


 int DPRINTF (char*,int ) ;
 int USETW (int ,int ) ;
 int USIE_LINK_STATE ;
 size_t USIE_UC_STATUS ;
 int UT_WRITE_CLASS_INTERFACE ;
 int usie_do_request (struct usie_softc*,struct usb_device_request*,int *) ;

__attribute__((used)) static void
usie_uc_update_line_state(struct ucom_softc *ucom, uint8_t ls)
{
 struct usie_softc *sc = ucom->sc_parent;
 struct usb_device_request req;

 if (sc->sc_uc_xfer[ucom->sc_subunit][USIE_UC_STATUS] == ((void*)0))
  return;

 req.bmRequestType = UT_WRITE_CLASS_INTERFACE;
 req.bRequest = USIE_LINK_STATE;
 USETW(req.wValue, ls);
 USETW(req.wIndex, sc->sc_uc_ifnum[ucom->sc_subunit]);
 USETW(req.wLength, 0);

 DPRINTF("sc_uc_ifnum=%d\n", sc->sc_uc_ifnum[ucom->sc_subunit]);

 usie_do_request(sc, &req, ((void*)0));
}
