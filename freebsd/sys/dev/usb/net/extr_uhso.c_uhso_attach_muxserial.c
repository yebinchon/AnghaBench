
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
struct usb_interface {TYPE_2__* idesc; } ;
struct usb_descriptor {int bDescriptorSubtype; } ;
struct uhso_softc {int sc_mtx; int sc_xfer; int sc_udev; int sc_dev; TYPE_1__* sc_tty; int sc_iface_index; } ;
struct TYPE_4__ {int bInterfaceNumber; } ;
struct TYPE_3__ {int ht_muxport; int ht_xfer; } ;


 int ENOMEM ;
 int ENXIO ;
 int UDESC_CS_INTERFACE ;
 int UHSO_CTRL_MAX ;
 int UHSO_DPRINTF (int,char*,...) ;
 int device_printf (int ,char*,int ) ;
 int uhso_alloc_tty (struct uhso_softc*) ;
 int uhso_ctrl_config ;
 int uhso_mux_config ;
 int usbd_errstr (scalar_t__) ;
 struct usb_descriptor* usbd_find_descriptor (int ,int *,int ,int ,int,int ,int ) ;
 scalar_t__ usbd_transfer_setup (int ,int *,int ,int ,int,struct uhso_softc*,int *) ;

__attribute__((used)) static int
uhso_attach_muxserial(struct uhso_softc *sc, struct usb_interface *iface,
    int type)
{
 struct usb_descriptor *desc;
 int i, port, tty;
 usb_error_t uerr;






 desc = usbd_find_descriptor(sc->sc_udev, ((void*)0),
     iface->idesc->bInterfaceNumber, UDESC_CS_INTERFACE, 0xff, 0, 0);
 if (desc == ((void*)0)) {
  UHSO_DPRINTF(0, "Failed to find UDESC_CS_INTERFACE\n");
  return (ENXIO);
 }

 UHSO_DPRINTF(1, "Mux port mask %x\n", desc->bDescriptorSubtype);
 if (desc->bDescriptorSubtype == 0)
  return (ENXIO);





 for (i = 0; i < 8; i++) {
  port = (1 << i);
  if ((port & desc->bDescriptorSubtype) == port) {
   UHSO_DPRINTF(2, "Found mux port %x (%d)\n", port, i);
   tty = uhso_alloc_tty(sc);
   if (tty < 0)
    return (ENOMEM);
   sc->sc_tty[tty].ht_muxport = i;
   uerr = usbd_transfer_setup(sc->sc_udev,
       &sc->sc_iface_index, sc->sc_tty[tty].ht_xfer,
       uhso_ctrl_config, UHSO_CTRL_MAX, sc, &sc->sc_mtx);
   if (uerr) {
    device_printf(sc->sc_dev,
        "Failed to setup control pipe: %s\n",
        usbd_errstr(uerr));
    return (ENXIO);
   }
  }
 }


 uerr = usbd_transfer_setup(sc->sc_udev,
     &iface->idesc->bInterfaceNumber, sc->sc_xfer,
     uhso_mux_config, 1, sc, &sc->sc_mtx);
 if (uerr)
  return (ENXIO);

 return (0);
}
