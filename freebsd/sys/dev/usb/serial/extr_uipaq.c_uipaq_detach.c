
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uipaq_softc {int sc_xfer; int sc_ucom; int sc_super_ucom; } ;
typedef int device_t ;


 int UIPAQ_N_TRANSFER ;
 int device_claim_softc (int ) ;
 struct uipaq_softc* device_get_softc (int ) ;
 int ucom_detach (int *,int *) ;
 int uipaq_free_softc (struct uipaq_softc*) ;
 int usbd_transfer_unsetup (int ,int ) ;

int
uipaq_detach(device_t dev)
{
 struct uipaq_softc *sc = device_get_softc(dev);

 ucom_detach(&sc->sc_super_ucom, &sc->sc_ucom);
 usbd_transfer_unsetup(sc->sc_xfer, UIPAQ_N_TRANSFER);

 device_claim_softc(dev);

 uipaq_free_softc(sc);

 return (0);
}
