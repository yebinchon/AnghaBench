
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int idProduct; } ;
struct usb_attach_arg {int device; TYPE_1__ info; } ;
struct uchcom_softc {int sc_super_ucom; int sc_mtx; int sc_ucom; int * sc_xfer; int sc_udev; } ;
typedef int device_t ;


 int DPRINTF (char*,int ) ;
 int DPRINTFN (int,char*) ;
 int ENXIO ;
 int MTX_DEF ;
 size_t UCHCOM_BULK_DT_RD ;
 size_t UCHCOM_BULK_DT_WR ;
 int UCHCOM_IFACE_INDEX ;
 int UCHCOM_N_TRANSFER ;


 struct usb_attach_arg* device_get_ivars (int ) ;
 struct uchcom_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int device_set_usb_desc (int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int uchcom_callback ;
 int uchcom_config_data ;
 int uchcom_detach (int ) ;
 int ucom_attach (int *,int *,int,struct uchcom_softc*,int *,int *) ;
 int ucom_ref (int *) ;
 int ucom_set_pnpinfo_usb (int *,int ) ;
 int usbd_errstr (int) ;
 int usbd_transfer_setup (int ,int *,int *,int ,int ,struct uchcom_softc*,int *) ;
 int usbd_xfer_set_stall (int ) ;

__attribute__((used)) static int
uchcom_attach(device_t dev)
{
 struct uchcom_softc *sc = device_get_softc(dev);
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 int error;
 uint8_t iface_index;

 DPRINTFN(11, "\n");

 device_set_usb_desc(dev);
 mtx_init(&sc->sc_mtx, "uchcom", ((void*)0), MTX_DEF);
 ucom_ref(&sc->sc_super_ucom);

 sc->sc_udev = uaa->device;

 switch (uaa->info.idProduct) {
 case 129:
  device_printf(dev, "CH340 detected\n");
  break;
 case 128:
  device_printf(dev, "CH341 detected\n");
  break;
 default:
  device_printf(dev, "New CH340/CH341 product 0x%04x detected\n",
      uaa->info.idProduct);
  break;
 }

 iface_index = UCHCOM_IFACE_INDEX;
 error = usbd_transfer_setup(uaa->device,
     &iface_index, sc->sc_xfer, uchcom_config_data,
     UCHCOM_N_TRANSFER, sc, &sc->sc_mtx);

 if (error) {
  DPRINTF("one or more missing USB endpoints, "
      "error=%s\n", usbd_errstr(error));
  goto detach;
 }


 mtx_lock(&sc->sc_mtx);
 usbd_xfer_set_stall(sc->sc_xfer[UCHCOM_BULK_DT_WR]);
 usbd_xfer_set_stall(sc->sc_xfer[UCHCOM_BULK_DT_RD]);
 mtx_unlock(&sc->sc_mtx);

 error = ucom_attach(&sc->sc_super_ucom, &sc->sc_ucom, 1, sc,
     &uchcom_callback, &sc->sc_mtx);
 if (error) {
  goto detach;
 }
 ucom_set_pnpinfo_usb(&sc->sc_super_ucom, dev);

 return (0);

detach:
 uchcom_detach(dev);
 return (ENXIO);
}
