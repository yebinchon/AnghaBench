
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucom_softc {struct uchcom_softc* sc_parent; } ;
struct uchcom_softc {int * sc_xfer; } ;


 size_t UCHCOM_BULK_DT_WR ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
uchcom_start_write(struct ucom_softc *ucom)
{
 struct uchcom_softc *sc = ucom->sc_parent;

 usbd_transfer_start(sc->sc_xfer[UCHCOM_BULK_DT_WR]);
}
