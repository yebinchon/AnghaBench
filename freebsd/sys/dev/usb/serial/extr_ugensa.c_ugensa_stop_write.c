
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ugensa_sub_softc {int * sc_xfer; } ;
struct ugensa_softc {struct ugensa_sub_softc* sc_sub; } ;
struct ucom_softc {int sc_portno; struct ugensa_softc* sc_parent; } ;


 size_t UGENSA_BULK_DT_WR ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
ugensa_stop_write(struct ucom_softc *ucom)
{
 struct ugensa_softc *sc = ucom->sc_parent;
 struct ugensa_sub_softc *ssc = sc->sc_sub + ucom->sc_portno;

 usbd_transfer_stop(ssc->sc_xfer[UGENSA_BULK_DT_WR]);
}
