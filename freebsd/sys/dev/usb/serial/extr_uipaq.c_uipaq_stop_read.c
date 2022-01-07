
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uipaq_softc {int * sc_xfer; } ;
struct ucom_softc {struct uipaq_softc* sc_parent; } ;


 size_t UIPAQ_BULK_DT_RD ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
uipaq_stop_read(struct ucom_softc *ucom)
{
 struct uipaq_softc *sc = ucom->sc_parent;


 usbd_transfer_stop(sc->sc_xfer[UIPAQ_BULK_DT_RD]);
}
