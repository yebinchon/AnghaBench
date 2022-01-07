
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umct_softc {int * sc_xfer; } ;
struct ucom_softc {struct umct_softc* sc_parent; } ;


 size_t UMCT_BULK_DT_RD ;
 size_t UMCT_INTR_DT_RD ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
umct_stop_read(struct ucom_softc *ucom)
{
 struct umct_softc *sc = ucom->sc_parent;


 usbd_transfer_stop(sc->sc_xfer[UMCT_INTR_DT_RD]);


 usbd_transfer_stop(sc->sc_xfer[UMCT_BULK_DT_RD]);
}
