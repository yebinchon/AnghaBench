
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {TYPE_1__* idesc; } ;
struct uhso_softc {struct usb_device* sc_udev; scalar_t__ sc_ttys; int sc_dev; int sc_super_ucom; int sc_mtx; int sc_ucom; int * sc_xfer; int sc_type; } ;
struct TYPE_2__ {int bNumEndpoints; } ;


 int ENXIO ;
 int UHSO_DPRINTF (int,char*,...) ;
 int UHSO_IFACE_PORT (int) ;
 scalar_t__ UHSO_IFACE_PORT_TYPE (int) ;
 int UHSO_IFACE_SPEC (int,int,scalar_t__) ;
 int UHSO_IFACE_USB_TYPE (int) ;
 int UHSO_IF_BULK ;
 int UHSO_IF_MUX ;
 size_t UHSO_MUX_ENDPT_INTR ;
 int UHSO_PORT_SERIAL ;
 scalar_t__ UHSO_PORT_TYPE_NETWORK ;
 int device_printf (int ,char*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ucom_attach (int *,int ,scalar_t__,struct uhso_softc*,int *,int *) ;
 int ucom_set_pnpinfo_usb (int *,int ) ;
 int uhso_attach_bulkserial (struct uhso_softc*,struct usb_interface*,int) ;
 int uhso_attach_ifnet (struct uhso_softc*,struct usb_interface*,int) ;
 int uhso_attach_muxserial (struct uhso_softc*,struct usb_interface*,int) ;
 int uhso_ucom_callback ;
 struct usb_interface* usbd_get_iface (struct usb_device*,int) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static int
uhso_probe_iface(struct uhso_softc *sc, int index,
    int (*probe)(struct usb_device *, int))
{
 struct usb_interface *iface;
 int type, error;

 UHSO_DPRINTF(1, "Probing for interface %d, probe_func=%p\n", index, probe);

 type = probe(sc->sc_udev, index);
 UHSO_DPRINTF(1, "Probe result %x\n", type);
 if (type <= 0)
  return (ENXIO);

 sc->sc_type = type;
 iface = usbd_get_iface(sc->sc_udev, index);

 if (UHSO_IFACE_PORT_TYPE(type) == UHSO_PORT_TYPE_NETWORK) {
  error = uhso_attach_ifnet(sc, iface, type);
  if (error) {
   UHSO_DPRINTF(1, "uhso_attach_ifnet failed");
   return (ENXIO);
  }






  if (iface->idesc->bNumEndpoints < 3) {
   sc->sc_type = UHSO_IFACE_SPEC(
       UHSO_IFACE_USB_TYPE(type) & ~UHSO_IF_MUX,
       UHSO_IFACE_PORT(type) & ~UHSO_PORT_SERIAL,
       UHSO_IFACE_PORT_TYPE(type));
   return (0);
  }

  UHSO_DPRINTF(1, "Trying to attach mux. serial\n");
  error = uhso_attach_muxserial(sc, iface, type);
  if (error == 0 && sc->sc_ttys > 0) {
   error = ucom_attach(&sc->sc_super_ucom, sc->sc_ucom,
       sc->sc_ttys, sc, &uhso_ucom_callback, &sc->sc_mtx);
   if (error) {
    device_printf(sc->sc_dev, "ucom_attach failed\n");
    return (ENXIO);
   }
   ucom_set_pnpinfo_usb(&sc->sc_super_ucom, sc->sc_dev);

   mtx_lock(&sc->sc_mtx);
   usbd_transfer_start(sc->sc_xfer[UHSO_MUX_ENDPT_INTR]);
   mtx_unlock(&sc->sc_mtx);
  }
 } else if ((UHSO_IFACE_USB_TYPE(type) & UHSO_IF_BULK) &&
     UHSO_IFACE_PORT(type) & UHSO_PORT_SERIAL) {

  error = uhso_attach_bulkserial(sc, iface, type);
  if (error)
   return (ENXIO);

  error = ucom_attach(&sc->sc_super_ucom, sc->sc_ucom,
      sc->sc_ttys, sc, &uhso_ucom_callback, &sc->sc_mtx);
  if (error) {
   device_printf(sc->sc_dev, "ucom_attach failed\n");
   return (ENXIO);
  }
  ucom_set_pnpinfo_usb(&sc->sc_super_ucom, sc->sc_dev);
 }
 else {
  UHSO_DPRINTF(0, "Unknown type %x\n", type);
  return (ENXIO);
 }

 return (0);
}
