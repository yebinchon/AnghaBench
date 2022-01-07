
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
struct usb_interface {TYPE_1__* idesc; } ;
struct uhso_softc {TYPE_2__* sc_tty; int sc_xfer; int sc_mtx; int sc_udev; } ;
struct TYPE_4__ {int ht_muxport; } ;
struct TYPE_3__ {int bInterfaceNumber; } ;


 int ENOMEM ;
 scalar_t__ UHSO_BULK_ENDPT_MAX ;
 int UHSO_DPRINTF (int ,char*) ;
 int uhso_alloc_tty (struct uhso_softc*) ;
 int uhso_bs_config ;
 scalar_t__ usbd_transfer_setup (int ,int *,int ,int ,scalar_t__,struct uhso_softc*,int *) ;
 int usbd_transfer_unsetup (int ,scalar_t__) ;

__attribute__((used)) static int
uhso_attach_bulkserial(struct uhso_softc *sc, struct usb_interface *iface,
    int type)
{
 usb_error_t uerr;
 int tty;


 uerr = usbd_transfer_setup(sc->sc_udev,
     &iface->idesc->bInterfaceNumber, sc->sc_xfer,
     uhso_bs_config, UHSO_BULK_ENDPT_MAX, sc, &sc->sc_mtx);
 if (uerr) {

  uerr = usbd_transfer_setup(sc->sc_udev,
      &iface->idesc->bInterfaceNumber, sc->sc_xfer,
      uhso_bs_config, UHSO_BULK_ENDPT_MAX - 1, sc, &sc->sc_mtx);
 }
 if (uerr) {
  UHSO_DPRINTF(0, "usbd_transfer_setup failed");
  return (-1);
 }

 tty = uhso_alloc_tty(sc);
 if (tty < 0) {
  usbd_transfer_unsetup(sc->sc_xfer, UHSO_BULK_ENDPT_MAX);
  return (ENOMEM);
 }

 sc->sc_tty[tty].ht_muxport = -1;
 return (0);
}
