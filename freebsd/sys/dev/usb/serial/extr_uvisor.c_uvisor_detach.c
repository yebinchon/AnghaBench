
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvisor_softc {int sc_xfer; int sc_ucom; int sc_super_ucom; } ;
typedef int device_t ;


 int DPRINTF (char*,struct uvisor_softc*) ;
 int UVISOR_N_TRANSFER ;
 int device_claim_softc (int ) ;
 struct uvisor_softc* device_get_softc (int ) ;
 int ucom_detach (int *,int *) ;
 int usbd_transfer_unsetup (int ,int ) ;
 int uvisor_free_softc (struct uvisor_softc*) ;

__attribute__((used)) static int
uvisor_detach(device_t dev)
{
 struct uvisor_softc *sc = device_get_softc(dev);

 DPRINTF("sc=%p\n", sc);

 ucom_detach(&sc->sc_super_ucom, &sc->sc_ucom);
 usbd_transfer_unsetup(sc->sc_xfer, UVISOR_N_TRANSFER);

 device_claim_softc(dev);

 uvisor_free_softc(sc);

 return (0);
}
