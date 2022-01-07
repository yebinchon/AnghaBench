
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufoma_softc {int * sc_bulk_xfer; int * sc_ctrl_xfer; scalar_t__ sc_nobulk; } ;
struct ucom_softc {struct ufoma_softc* sc_parent; } ;


 size_t UFOMA_BULK_ENDPT_WRITE ;
 size_t UFOMA_CTRL_ENDPT_WRITE ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
ufoma_start_write(struct ucom_softc *ucom)
{
 struct ufoma_softc *sc = ucom->sc_parent;

 if (sc->sc_nobulk) {
  usbd_transfer_start(sc->sc_ctrl_xfer[UFOMA_CTRL_ENDPT_WRITE]);
 } else {
  usbd_transfer_start(sc->sc_bulk_xfer[UFOMA_BULK_ENDPT_WRITE]);
 }
}
