
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uplcom_softc {int sc_xfer; int sc_ucom; int sc_super_ucom; } ;
typedef int device_t ;


 int DPRINTF (char*,struct uplcom_softc*) ;
 int UPLCOM_N_TRANSFER ;
 int device_claim_softc (int ) ;
 struct uplcom_softc* device_get_softc (int ) ;
 int ucom_detach (int *,int *) ;
 int uplcom_free_softc (struct uplcom_softc*) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
uplcom_detach(device_t dev)
{
 struct uplcom_softc *sc = device_get_softc(dev);

 DPRINTF("sc=%p\n", sc);

 ucom_detach(&sc->sc_super_ucom, &sc->sc_ucom);
 usbd_transfer_unsetup(sc->sc_xfer, UPLCOM_N_TRANSFER);

 device_claim_softc(dev);

 uplcom_free_softc(sc);

 return (0);
}
