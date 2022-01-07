
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvscom_softc {scalar_t__* sc_xfer; int sc_ucom; int sc_super_ucom; } ;
typedef int device_t ;


 int DPRINTF (char*,struct uvscom_softc*) ;
 size_t UVSCOM_INTR_DT_RD ;
 int UVSCOM_N_TRANSFER ;
 int device_claim_softc (int ) ;
 struct uvscom_softc* device_get_softc (int ) ;
 int ucom_detach (int *,int *) ;
 int usbd_transfer_stop (scalar_t__) ;
 int usbd_transfer_unsetup (scalar_t__*,int ) ;
 int uvscom_free_softc (struct uvscom_softc*) ;

__attribute__((used)) static int
uvscom_detach(device_t dev)
{
 struct uvscom_softc *sc = device_get_softc(dev);

 DPRINTF("sc=%p\n", sc);



 if (sc->sc_xfer[UVSCOM_INTR_DT_RD])
  usbd_transfer_stop(sc->sc_xfer[UVSCOM_INTR_DT_RD]);

 ucom_detach(&sc->sc_super_ucom, &sc->sc_ucom);
 usbd_transfer_unsetup(sc->sc_xfer, UVSCOM_N_TRANSFER);

 device_claim_softc(dev);

 uvscom_free_softc(sc);

 return (0);
}
