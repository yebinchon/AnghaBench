
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_attach_arg {int device; } ;
struct uark_softc {int sc_super_ucom; int sc_mtx; int sc_ucom; int * sc_xfer; int sc_udev; } ;
typedef scalar_t__ int32_t ;
typedef int device_t ;


 int DPRINTF (char*) ;
 int ENXIO ;
 int MTX_DEF ;
 size_t UARK_BULK_DT_RD ;
 size_t UARK_BULK_DT_WR ;
 int UARK_IFACE_INDEX ;
 int UARK_N_TRANSFER ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 struct uark_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int device_set_usb_desc (int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int uark_callback ;
 int uark_detach (int ) ;
 int uark_xfer_config ;
 scalar_t__ ucom_attach (int *,int *,int,struct uark_softc*,int *,int *) ;
 int ucom_ref (int *) ;
 int ucom_set_pnpinfo_usb (int *,int ) ;
 scalar_t__ usbd_transfer_setup (int ,int *,int *,int ,int ,struct uark_softc*,int *) ;
 int usbd_xfer_set_stall (int ) ;

__attribute__((used)) static int
uark_attach(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct uark_softc *sc = device_get_softc(dev);
 int32_t error;
 uint8_t iface_index;

 device_set_usb_desc(dev);
 mtx_init(&sc->sc_mtx, "uark", ((void*)0), MTX_DEF);
 ucom_ref(&sc->sc_super_ucom);

 sc->sc_udev = uaa->device;

 iface_index = UARK_IFACE_INDEX;
 error = usbd_transfer_setup
     (uaa->device, &iface_index, sc->sc_xfer,
     uark_xfer_config, UARK_N_TRANSFER, sc, &sc->sc_mtx);

 if (error) {
  device_printf(dev, "allocating control USB "
      "transfers failed\n");
  goto detach;
 }

 mtx_lock(&sc->sc_mtx);
 usbd_xfer_set_stall(sc->sc_xfer[UARK_BULK_DT_WR]);
 usbd_xfer_set_stall(sc->sc_xfer[UARK_BULK_DT_RD]);
 mtx_unlock(&sc->sc_mtx);

 error = ucom_attach(&sc->sc_super_ucom, &sc->sc_ucom, 1, sc,
     &uark_callback, &sc->sc_mtx);
 if (error) {
  DPRINTF("ucom_attach failed\n");
  goto detach;
 }
 ucom_set_pnpinfo_usb(&sc->sc_super_ucom, dev);

 return (0);

detach:
 uark_detach(dev);
 return (ENXIO);
}
