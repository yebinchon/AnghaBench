
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umoscom_softc {int * sc_xfer; } ;
struct ucom_softc {struct umoscom_softc* sc_parent; } ;


 size_t UMOSCOM_BULK_DT_RD ;
 size_t UMOSCOM_INTR_DT_RD ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
umoscom_stop_read(struct ucom_softc *ucom)
{
 struct umoscom_softc *sc = ucom->sc_parent;


 usbd_transfer_stop(sc->sc_xfer[UMOSCOM_INTR_DT_RD]);


 usbd_transfer_stop(sc->sc_xfer[UMOSCOM_BULK_DT_RD]);
}
