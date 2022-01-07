
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct uhso_softc {int sc_ttys; int sc_if_xfer; int sc_mtx; TYPE_2__* sc_ifp; int sc_c; TYPE_1__* sc_tty; int sc_ucom; int sc_super_ucom; int sc_ctrl_xfer; int sc_xfer; } ;
typedef int device_t ;
struct TYPE_6__ {int if_dunit; } ;
struct TYPE_5__ {int ht_muxport; int ht_xfer; } ;


 int UHSO_CTRL_MAX ;
 int UHSO_IFNET_MAX ;
 int bpfdetach (TYPE_2__*) ;
 int callout_drain (int *) ;
 int device_claim_softc (int ) ;
 struct uhso_softc* device_get_softc (int ) ;
 int free_unr (int ,int ) ;
 int if_detach (TYPE_2__*) ;
 int if_free (TYPE_2__*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ucom_detach (int *,int ) ;
 int uhso_free_softc (struct uhso_softc*) ;
 int uhso_if_stop (struct uhso_softc*) ;
 int uhso_ifnet_unit ;
 int usbd_transfer_unsetup (int ,int) ;

__attribute__((used)) static int
uhso_detach(device_t self)
{
 struct uhso_softc *sc = device_get_softc(self);
 int i;

 usbd_transfer_unsetup(sc->sc_xfer, 3);
 usbd_transfer_unsetup(sc->sc_ctrl_xfer, UHSO_CTRL_MAX);
 if (sc->sc_ttys > 0) {
  ucom_detach(&sc->sc_super_ucom, sc->sc_ucom);

  for (i = 0; i < sc->sc_ttys; i++) {
   if (sc->sc_tty[i].ht_muxport != -1) {
    usbd_transfer_unsetup(sc->sc_tty[i].ht_xfer,
        UHSO_CTRL_MAX);
   }
  }
 }

 if (sc->sc_ifp != ((void*)0)) {
  callout_drain(&sc->sc_c);
  free_unr(uhso_ifnet_unit, sc->sc_ifp->if_dunit);
  mtx_lock(&sc->sc_mtx);
  uhso_if_stop(sc);
  bpfdetach(sc->sc_ifp);
  if_detach(sc->sc_ifp);
  if_free(sc->sc_ifp);
  mtx_unlock(&sc->sc_mtx);
  usbd_transfer_unsetup(sc->sc_if_xfer, UHSO_IFNET_MAX);
 }

 device_claim_softc(self);

 uhso_free_softc(sc);

 return (0);
}
