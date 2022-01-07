
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufoma_softc {int sc_bulk_xfer; int sc_ctrl_xfer; } ;
struct ucom_softc {struct ufoma_softc* sc_parent; } ;


 int UFOMA_BULK_ENDPT_MAX ;
 int UFOMA_CTRL_ENDPT_MAX ;
 int usbd_transfer_poll (int ,int ) ;

__attribute__((used)) static void
ufoma_poll(struct ucom_softc *ucom)
{
 struct ufoma_softc *sc = ucom->sc_parent;
 usbd_transfer_poll(sc->sc_ctrl_xfer, UFOMA_CTRL_ENDPT_MAX);
 usbd_transfer_poll(sc->sc_bulk_xfer, UFOMA_BULK_ENDPT_MAX);
}
