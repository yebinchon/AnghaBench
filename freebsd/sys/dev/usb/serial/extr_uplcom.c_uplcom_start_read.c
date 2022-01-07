
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uplcom_softc {int * sc_xfer; } ;
struct ucom_softc {struct uplcom_softc* sc_parent; } ;


 size_t UPLCOM_BULK_DT_RD ;
 size_t UPLCOM_INTR_DT_RD ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
uplcom_start_read(struct ucom_softc *ucom)
{
 struct uplcom_softc *sc = ucom->sc_parent;


 usbd_transfer_start(sc->sc_xfer[UPLCOM_INTR_DT_RD]);


 usbd_transfer_start(sc->sc_xfer[UPLCOM_BULK_DT_RD]);
}
