
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uark_softc {int sc_xfer; int sc_ucom; int sc_super_ucom; } ;
typedef int device_t ;


 int UARK_N_TRANSFER ;
 int device_claim_softc (int ) ;
 struct uark_softc* device_get_softc (int ) ;
 int uark_free_softc (struct uark_softc*) ;
 int ucom_detach (int *,int *) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
uark_detach(device_t dev)
{
 struct uark_softc *sc = device_get_softc(dev);

 ucom_detach(&sc->sc_super_ucom, &sc->sc_ucom);
 usbd_transfer_unsetup(sc->sc_xfer, UARK_N_TRANSFER);

 device_claim_softc(dev);

 uark_free_softc(sc);

 return (0);
}
