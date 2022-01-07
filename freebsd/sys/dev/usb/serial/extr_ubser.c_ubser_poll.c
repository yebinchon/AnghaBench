
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucom_softc {struct ubser_softc* sc_parent; } ;
struct ubser_softc {int sc_xfer; } ;


 int UBSER_N_TRANSFER ;
 int usbd_transfer_poll (int ,int ) ;

__attribute__((used)) static void
ubser_poll(struct ucom_softc *ucom)
{
 struct ubser_softc *sc = ucom->sc_parent;
 usbd_transfer_poll(sc->sc_xfer, UBSER_N_TRANSFER);
}
