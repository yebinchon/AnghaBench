
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucom_softc {size_t sc_subunit; struct u3g_softc* sc_parent; } ;
struct u3g_softc {int ** sc_xfer; } ;


 size_t U3G_BULK_WR ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
u3g_stop_write(struct ucom_softc *ucom)
{
 struct u3g_softc *sc = ucom->sc_parent;

 usbd_transfer_stop(sc->sc_xfer[ucom->sc_subunit][U3G_BULK_WR]);
}
