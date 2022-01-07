
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucom_softc {struct ubsa_softc* sc_parent; } ;
struct ubsa_softc {int * sc_xfer; } ;


 size_t UBSA_BULK_DT_RD ;
 size_t UBSA_INTR_DT_RD ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
ubsa_stop_read(struct ucom_softc *ucom)
{
 struct ubsa_softc *sc = ucom->sc_parent;


 usbd_transfer_stop(sc->sc_xfer[UBSA_INTR_DT_RD]);


 usbd_transfer_stop(sc->sc_xfer[UBSA_BULK_DT_RD]);
}
