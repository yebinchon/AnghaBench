
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucom_softc {struct ubsa_softc* sc_parent; } ;
struct ubsa_softc {int sc_xfer; } ;


 int UBSA_N_TRANSFER ;
 int usbd_transfer_poll (int ,int ) ;

__attribute__((used)) static void
ubsa_poll(struct ucom_softc *ucom)
{
 struct ubsa_softc *sc = ucom->sc_parent;
 usbd_transfer_poll(sc->sc_xfer, UBSA_N_TRANSFER);

}
