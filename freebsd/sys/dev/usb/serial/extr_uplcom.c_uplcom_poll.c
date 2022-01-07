
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uplcom_softc {int sc_xfer; } ;
struct ucom_softc {struct uplcom_softc* sc_parent; } ;


 int UPLCOM_N_TRANSFER ;
 int usbd_transfer_poll (int ,int ) ;

__attribute__((used)) static void
uplcom_poll(struct ucom_softc *ucom)
{
 struct uplcom_softc *sc = ucom->sc_parent;
 usbd_transfer_poll(sc->sc_xfer, UPLCOM_N_TRANSFER);
}
