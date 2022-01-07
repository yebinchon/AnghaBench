
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umodem_softc {int sc_xfer; int sc_ucom; int sc_super_ucom; } ;
typedef int device_t ;


 int DPRINTF (char*,struct umodem_softc*) ;
 int UMODEM_N_TRANSFER ;
 int device_claim_softc (int ) ;
 struct umodem_softc* device_get_softc (int ) ;
 int ucom_detach (int *,int *) ;
 int umodem_free_softc (struct umodem_softc*) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
umodem_detach(device_t dev)
{
 struct umodem_softc *sc = device_get_softc(dev);

 DPRINTF("sc=%p\n", sc);

 ucom_detach(&sc->sc_super_ucom, &sc->sc_ucom);
 usbd_transfer_unsetup(sc->sc_xfer, UMODEM_N_TRANSFER);

 device_claim_softc(dev);

 umodem_free_softc(sc);

 return (0);
}
