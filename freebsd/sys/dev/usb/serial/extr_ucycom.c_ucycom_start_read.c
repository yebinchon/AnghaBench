
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucycom_softc {int * sc_xfer; } ;
struct ucom_softc {struct ucycom_softc* sc_parent; } ;


 size_t UCYCOM_INTR_RD ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
ucycom_start_read(struct ucom_softc *ucom)
{
 struct ucycom_softc *sc = ucom->sc_parent;

 usbd_transfer_start(sc->sc_xfer[UCYCOM_INTR_RD]);
}
