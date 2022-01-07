
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bIfaceIndex; } ;
struct usb_attach_arg {TYPE_1__ info; int device; } ;
struct cfumass_softc {scalar_t__ sc_ctl_initid; int sc_queued; int * sc_xfer; void* sc_csw; void* sc_cbw; int sc_mtx; int sc_udev; int sc_dev; } ;
typedef int device_t ;


 int CFUMASS_DEBUG (struct cfumass_softc*,char*) ;
 int CFUMASS_LOCK (struct cfumass_softc*) ;
 size_t CFUMASS_T_COMMAND ;
 int CFUMASS_T_MAX ;
 size_t CFUMASS_T_STATUS ;
 int CFUMASS_UNLOCK (struct cfumass_softc*) ;
 int CFUMASS_WARN (struct cfumass_softc*,char*,scalar_t__) ;
 int ENXIO ;
 int MTX_DEF ;
 int USB_POWER_MODE_SAVE ;
 int cfumass_config ;
 int cfumass_port ;
 int cfumass_refcount ;
 int cfumass_transfer_start (struct cfumass_softc*,size_t) ;
 scalar_t__ ctl_add_initiator (int *,int,int ,int *) ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 struct cfumass_softc* device_get_softc (int ) ;
 int device_set_usb_desc (int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int refcount_acquire (int *) ;
 int refcount_init (int *,int ) ;
 int refcount_release (int *) ;
 scalar_t__ usbd_errstr (int) ;
 int usbd_set_power_mode (int ,int ) ;
 int usbd_transfer_setup (int ,int *,int *,int ,int ,struct cfumass_softc*,int *) ;
 int usbd_transfer_unsetup (int *,int ) ;
 void* usbd_xfer_get_frame_buffer (int ,int ) ;

__attribute__((used)) static int
cfumass_attach(device_t dev)
{
 struct cfumass_softc *sc;
 struct usb_attach_arg *uaa;
 int error;

 sc = device_get_softc(dev);
 uaa = device_get_ivars(dev);

 sc->sc_dev = dev;
 sc->sc_udev = uaa->device;

 CFUMASS_DEBUG(sc, "go");

 usbd_set_power_mode(uaa->device, USB_POWER_MODE_SAVE);
 device_set_usb_desc(dev);

 mtx_init(&sc->sc_mtx, "cfumass", ((void*)0), MTX_DEF);
 refcount_acquire(&cfumass_refcount);

 error = usbd_transfer_setup(uaa->device,
     &uaa->info.bIfaceIndex, sc->sc_xfer, cfumass_config,
     CFUMASS_T_MAX, sc, &sc->sc_mtx);
 if (error != 0) {
  CFUMASS_WARN(sc, "usbd_transfer_setup() failed: %s",
      usbd_errstr(error));
  refcount_release(&cfumass_refcount);
  return (ENXIO);
 }

 sc->sc_cbw =
     usbd_xfer_get_frame_buffer(sc->sc_xfer[CFUMASS_T_COMMAND], 0);
 sc->sc_csw =
     usbd_xfer_get_frame_buffer(sc->sc_xfer[CFUMASS_T_STATUS], 0);

 sc->sc_ctl_initid = ctl_add_initiator(&cfumass_port, -1, 0, ((void*)0));
 if (sc->sc_ctl_initid < 0) {
  CFUMASS_WARN(sc, "ctl_add_initiator() failed with error %d",
      sc->sc_ctl_initid);
  usbd_transfer_unsetup(sc->sc_xfer, CFUMASS_T_MAX);
  refcount_release(&cfumass_refcount);
  return (ENXIO);
 }

 refcount_init(&sc->sc_queued, 0);

 CFUMASS_LOCK(sc);
 cfumass_transfer_start(sc, CFUMASS_T_COMMAND);
 CFUMASS_UNLOCK(sc);

 return (0);
}
