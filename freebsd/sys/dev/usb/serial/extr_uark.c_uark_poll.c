
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucom_softc {struct uark_softc* sc_parent; } ;
struct uark_softc {int sc_xfer; } ;


 int UARK_N_TRANSFER ;
 int usbd_transfer_poll (int ,int ) ;

__attribute__((used)) static void
uark_poll(struct ucom_softc *ucom)
{
 struct uark_softc *sc = ucom->sc_parent;
 usbd_transfer_poll(sc->sc_xfer, UARK_N_TRANSFER);
}
