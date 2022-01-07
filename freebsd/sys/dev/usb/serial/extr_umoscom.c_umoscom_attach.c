
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_attach_arg {int device; } ;
struct umoscom_softc {int sc_mcr; int sc_super_ucom; int sc_mtx; int sc_ucom; int * sc_xfer; int sc_udev; } ;
typedef int device_t ;


 int ENXIO ;
 int MTX_DEF ;
 size_t UMOSCOM_BULK_DT_RD ;
 size_t UMOSCOM_BULK_DT_WR ;
 int UMOSCOM_IFACE_INDEX ;
 int UMOSCOM_N_TRANSFER ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 struct umoscom_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int device_set_desc (int ,char*) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ucom_attach (int *,int *,int,struct umoscom_softc*,int *,int *) ;
 int ucom_ref (int *) ;
 int ucom_set_pnpinfo_usb (int *,int ) ;
 int umoscom_callback ;
 int umoscom_config_data ;
 int umoscom_detach (int ) ;
 int usbd_errstr (int) ;
 int usbd_transfer_setup (int ,int *,int *,int ,int ,struct umoscom_softc*,int *) ;
 int usbd_xfer_set_stall (int ) ;

__attribute__((used)) static int
umoscom_attach(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct umoscom_softc *sc = device_get_softc(dev);
 int error;
 uint8_t iface_index;

 sc->sc_udev = uaa->device;
 sc->sc_mcr = 0x08;


 device_set_desc(dev, "MOSCHIP USB Serial Port Adapter");
 device_printf(dev, "<MOSCHIP USB Serial Port Adapter>\n");

 mtx_init(&sc->sc_mtx, "umoscom", ((void*)0), MTX_DEF);
 ucom_ref(&sc->sc_super_ucom);

 iface_index = UMOSCOM_IFACE_INDEX;
 error = usbd_transfer_setup(uaa->device, &iface_index,
     sc->sc_xfer, umoscom_config_data,
     UMOSCOM_N_TRANSFER, sc, &sc->sc_mtx);

 if (error) {
  goto detach;
 }

 mtx_lock(&sc->sc_mtx);
 usbd_xfer_set_stall(sc->sc_xfer[UMOSCOM_BULK_DT_WR]);
 usbd_xfer_set_stall(sc->sc_xfer[UMOSCOM_BULK_DT_RD]);
 mtx_unlock(&sc->sc_mtx);

 error = ucom_attach(&sc->sc_super_ucom, &sc->sc_ucom, 1, sc,
     &umoscom_callback, &sc->sc_mtx);
 if (error) {
  goto detach;
 }
 ucom_set_pnpinfo_usb(&sc->sc_super_ucom, dev);

 return (0);

detach:
 device_printf(dev, "attach error: %s\n", usbd_errstr(error));
 umoscom_detach(dev);
 return (ENXIO);
}
