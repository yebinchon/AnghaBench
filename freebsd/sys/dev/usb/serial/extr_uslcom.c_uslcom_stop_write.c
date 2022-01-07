
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uslcom_softc {int * sc_xfer; } ;
struct ucom_softc {struct uslcom_softc* sc_parent; } ;


 size_t USLCOM_BULK_DT_WR ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
uslcom_stop_write(struct ucom_softc *ucom)
{
 struct uslcom_softc *sc = ucom->sc_parent;

 usbd_transfer_stop(sc->sc_xfer[USLCOM_BULK_DT_WR]);
}
