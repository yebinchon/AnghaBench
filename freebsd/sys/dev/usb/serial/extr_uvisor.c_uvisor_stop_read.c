
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvisor_softc {int * sc_xfer; } ;
struct ucom_softc {struct uvisor_softc* sc_parent; } ;


 size_t UVISOR_BULK_DT_RD ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
uvisor_stop_read(struct ucom_softc *ucom)
{
 struct uvisor_softc *sc = ucom->sc_parent;

 usbd_transfer_stop(sc->sc_xfer[UVISOR_BULK_DT_RD]);
}
