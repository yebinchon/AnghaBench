
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umct_softc {int sc_xfer; int sc_ucom; int sc_super_ucom; } ;
typedef int device_t ;


 int UMCT_N_TRANSFER ;
 int device_claim_softc (int ) ;
 struct umct_softc* device_get_softc (int ) ;
 int ucom_detach (int *,int *) ;
 int umct_free_softc (struct umct_softc*) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
umct_detach(device_t dev)
{
 struct umct_softc *sc = device_get_softc(dev);

 ucom_detach(&sc->sc_super_ucom, &sc->sc_ucom);
 usbd_transfer_unsetup(sc->sc_xfer, UMCT_N_TRANSFER);

 device_claim_softc(dev);

 umct_free_softc(sc);

 return (0);
}
