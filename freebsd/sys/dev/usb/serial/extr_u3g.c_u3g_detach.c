
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct u3g_softc {int * sc_xfer; int sc_ucom; int sc_super_ucom; } ;
typedef int device_t ;


 int DPRINTF (char*,struct u3g_softc*) ;
 size_t U3G_MAXPORTS ;
 int U3G_N_TRANSFER ;
 int device_claim_softc (int ) ;
 struct u3g_softc* device_get_softc (int ) ;
 int u3g_free_softc (struct u3g_softc*) ;
 int ucom_detach (int *,int ) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
u3g_detach(device_t dev)
{
 struct u3g_softc *sc = device_get_softc(dev);
 uint8_t subunit;

 DPRINTF("sc=%p\n", sc);


 ucom_detach(&sc->sc_super_ucom, sc->sc_ucom);

 for (subunit = 0; subunit != U3G_MAXPORTS; subunit++)
  usbd_transfer_unsetup(sc->sc_xfer[subunit], U3G_N_TRANSFER);

 device_claim_softc(dev);

 u3g_free_softc(sc);

 return (0);
}
