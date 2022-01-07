
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uchcom_softc {int sc_xfer; int sc_ucom; int sc_super_ucom; } ;
typedef int device_t ;


 int DPRINTFN (int,char*) ;
 int UCHCOM_N_TRANSFER ;
 int device_claim_softc (int ) ;
 struct uchcom_softc* device_get_softc (int ) ;
 int uchcom_free_softc (struct uchcom_softc*) ;
 int ucom_detach (int *,int *) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
uchcom_detach(device_t dev)
{
 struct uchcom_softc *sc = device_get_softc(dev);

 DPRINTFN(11, "\n");

 ucom_detach(&sc->sc_super_ucom, &sc->sc_ucom);
 usbd_transfer_unsetup(sc->sc_xfer, UCHCOM_N_TRANSFER);

 device_claim_softc(dev);

 uchcom_free_softc(sc);

 return (0);
}
