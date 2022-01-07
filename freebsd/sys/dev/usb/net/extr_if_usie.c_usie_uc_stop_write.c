
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usie_softc {int ** sc_uc_xfer; } ;
struct ucom_softc {size_t sc_subunit; struct usie_softc* sc_parent; } ;


 size_t USIE_UC_TX ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
usie_uc_stop_write(struct ucom_softc *ucom)
{
 struct usie_softc *sc = ucom->sc_parent;

 usbd_transfer_stop(sc->sc_uc_xfer[ucom->sc_subunit][USIE_UC_TX]);
}
