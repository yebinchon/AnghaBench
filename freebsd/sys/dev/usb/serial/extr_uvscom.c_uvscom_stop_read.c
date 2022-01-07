
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvscom_softc {int * sc_xfer; } ;
struct ucom_softc {struct uvscom_softc* sc_parent; } ;


 size_t UVSCOM_BULK_DT_RD ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
uvscom_stop_read(struct ucom_softc *ucom)
{
 struct uvscom_softc *sc = ucom->sc_parent;

 usbd_transfer_stop(sc->sc_xfer[UVSCOM_BULK_DT_RD]);
}
