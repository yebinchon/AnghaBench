
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucom_softc {size_t sc_subunit; struct u3g_softc* sc_parent; } ;
struct u3g_softc {int ** sc_xfer; } ;


 size_t U3G_BULK_RD ;
 size_t U3G_INTR ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
u3g_start_read(struct ucom_softc *ucom)
{
 struct u3g_softc *sc = ucom->sc_parent;


 usbd_transfer_start(sc->sc_xfer[ucom->sc_subunit][U3G_INTR]);


 usbd_transfer_start(sc->sc_xfer[ucom->sc_subunit][U3G_BULK_RD]);
}
