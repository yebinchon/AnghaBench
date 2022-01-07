
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufoma_softc {int sc_cv; scalar_t__ sc_modetable; int sc_bulk_xfer; int sc_ctrl_xfer; int sc_ucom; int sc_super_ucom; } ;
typedef int device_t ;


 int M_USBDEV ;
 int UFOMA_BULK_ENDPT_MAX ;
 int UFOMA_CTRL_ENDPT_MAX ;
 int cv_destroy (int *) ;
 int device_claim_softc (int ) ;
 struct ufoma_softc* device_get_softc (int ) ;
 int free (scalar_t__,int ) ;
 int ucom_detach (int *,int *) ;
 int ufoma_free_softc (struct ufoma_softc*) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
ufoma_detach(device_t dev)
{
 struct ufoma_softc *sc = device_get_softc(dev);

 ucom_detach(&sc->sc_super_ucom, &sc->sc_ucom);
 usbd_transfer_unsetup(sc->sc_ctrl_xfer, UFOMA_CTRL_ENDPT_MAX);
 usbd_transfer_unsetup(sc->sc_bulk_xfer, UFOMA_BULK_ENDPT_MAX);

 if (sc->sc_modetable) {
  free(sc->sc_modetable, M_USBDEV);
 }
 cv_destroy(&sc->sc_cv);

 device_claim_softc(dev);

 ufoma_free_softc(sc);

 return (0);
}
