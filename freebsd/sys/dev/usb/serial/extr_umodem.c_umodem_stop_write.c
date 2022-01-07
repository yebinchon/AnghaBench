
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umodem_softc {int * sc_xfer; } ;
struct ucom_softc {struct umodem_softc* sc_parent; } ;


 size_t UMODEM_BULK_WR ;
 size_t UMODEM_INTR_WR ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
umodem_stop_write(struct ucom_softc *ucom)
{
 struct umodem_softc *sc = ucom->sc_parent;

 usbd_transfer_stop(sc->sc_xfer[UMODEM_INTR_WR]);
 usbd_transfer_stop(sc->sc_xfer[UMODEM_BULK_WR]);
}
