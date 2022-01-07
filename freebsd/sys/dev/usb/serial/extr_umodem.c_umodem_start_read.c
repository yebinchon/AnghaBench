
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umodem_softc {int * sc_xfer; } ;
struct ucom_softc {struct umodem_softc* sc_parent; } ;


 size_t UMODEM_BULK_RD ;
 size_t UMODEM_INTR_RD ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
umodem_start_read(struct ucom_softc *ucom)
{
 struct umodem_softc *sc = ucom->sc_parent;


 usbd_transfer_start(sc->sc_xfer[UMODEM_INTR_RD]);


 usbd_transfer_start(sc->sc_xfer[UMODEM_BULK_RD]);
}
