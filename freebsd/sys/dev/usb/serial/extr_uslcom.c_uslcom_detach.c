
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uslcom_softc {int sc_watchdog; int sc_xfer; int sc_ucom; int sc_super_ucom; } ;
typedef int device_t ;


 int DPRINTF (char*,struct uslcom_softc*) ;
 int USLCOM_N_TRANSFER ;
 int device_claim_softc (int ) ;
 struct uslcom_softc* device_get_softc (int ) ;
 int ucom_detach (int *,int *) ;
 int usb_callout_drain (int *) ;
 int usbd_transfer_unsetup (int ,int ) ;
 int uslcom_free_softc (struct uslcom_softc*) ;

__attribute__((used)) static int
uslcom_detach(device_t dev)
{
 struct uslcom_softc *sc = device_get_softc(dev);

 DPRINTF("sc=%p\n", sc);

 ucom_detach(&sc->sc_super_ucom, &sc->sc_ucom);
 usbd_transfer_unsetup(sc->sc_xfer, USLCOM_N_TRANSFER);

 usb_callout_drain(&sc->sc_watchdog);

 device_claim_softc(dev);

 uslcom_free_softc(sc);

 return (0);
}
