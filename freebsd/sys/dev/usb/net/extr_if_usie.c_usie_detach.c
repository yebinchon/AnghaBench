
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct usie_softc {scalar_t__ sc_nucom; int * sc_uc_xfer; int sc_if_xfer; int sc_ucom; int sc_super_ucom; int * sc_ifp; } ;
typedef int device_t ;


 int USIE_IF_N_XFER ;
 size_t USIE_UCOM_MAX ;
 int USIE_UC_N_XFER ;
 int bpfdetach (int *) ;
 int device_claim_softc (int ) ;
 struct usie_softc* device_get_softc (int ) ;
 int if_detach (int *) ;
 int if_free (int *) ;
 int ucom_detach (int *,int ) ;
 int usbd_transfer_unsetup (int ,int ) ;
 int usie_free_softc (struct usie_softc*) ;
 int usie_if_stop (struct usie_softc*) ;

__attribute__((used)) static int
usie_detach(device_t self)
{
 struct usie_softc *sc = device_get_softc(self);
 uint8_t x;


 if (sc->sc_ifp != ((void*)0)) {
  usie_if_stop(sc);
  usbd_transfer_unsetup(sc->sc_if_xfer, USIE_IF_N_XFER);
  bpfdetach(sc->sc_ifp);
  if_detach(sc->sc_ifp);
  if_free(sc->sc_ifp);
  sc->sc_ifp = ((void*)0);
 }

 if (sc->sc_nucom > 0)
  ucom_detach(&sc->sc_super_ucom, sc->sc_ucom);


 usbd_transfer_unsetup(sc->sc_if_xfer, USIE_IF_N_XFER);

 for (x = 0; x != USIE_UCOM_MAX; x++)
  usbd_transfer_unsetup(sc->sc_uc_xfer[x], USIE_UC_N_XFER);


 device_claim_softc(self);

 usie_free_softc(sc);

 return (0);
}
