
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvscom_softc {int sc_mtx; int * sc_xfer; int sc_super_ucom; int sc_ucom; int sc_line; int sc_iface_index; int sc_iface_no; int sc_udev; } ;
struct TYPE_2__ {int bIfaceNum; } ;
struct usb_attach_arg {int device; TYPE_1__ info; } ;
typedef int device_t ;


 int DPRINTF (char*,...) ;
 int ENXIO ;
 int MTX_DEF ;
 size_t UVSCOM_BULK_DT_RD ;
 size_t UVSCOM_BULK_DT_WR ;
 int UVSCOM_IFACE_INDEX ;
 size_t UVSCOM_INTR_DT_RD ;
 int UVSCOM_LINE_INIT ;
 int UVSCOM_N_TRANSFER ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 struct uvscom_softc* device_get_softc (int ) ;
 int device_set_usb_desc (int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ucom_attach (int *,int *,int,struct uvscom_softc*,int *,int *) ;
 int ucom_ref (int *) ;
 int ucom_set_pnpinfo_usb (int *,int ) ;
 int usbd_transfer_setup (int ,int *,int *,int ,int ,struct uvscom_softc*,int *) ;
 int usbd_transfer_start (int ) ;
 int usbd_xfer_set_stall (int ) ;
 int uvscom_callback ;
 int uvscom_config ;
 int uvscom_detach (int ) ;

__attribute__((used)) static int
uvscom_attach(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct uvscom_softc *sc = device_get_softc(dev);
 int error;

 device_set_usb_desc(dev);
 mtx_init(&sc->sc_mtx, "uvscom", ((void*)0), MTX_DEF);
 ucom_ref(&sc->sc_super_ucom);

 sc->sc_udev = uaa->device;

 DPRINTF("sc=%p\n", sc);

 sc->sc_iface_no = uaa->info.bIfaceNum;
 sc->sc_iface_index = UVSCOM_IFACE_INDEX;

 error = usbd_transfer_setup(uaa->device, &sc->sc_iface_index,
     sc->sc_xfer, uvscom_config, UVSCOM_N_TRANSFER, sc, &sc->sc_mtx);

 if (error) {
  DPRINTF("could not allocate all USB transfers!\n");
  goto detach;
 }
 sc->sc_line = UVSCOM_LINE_INIT;


 mtx_lock(&sc->sc_mtx);
 usbd_xfer_set_stall(sc->sc_xfer[UVSCOM_BULK_DT_WR]);
 usbd_xfer_set_stall(sc->sc_xfer[UVSCOM_BULK_DT_RD]);
 mtx_unlock(&sc->sc_mtx);

 error = ucom_attach(&sc->sc_super_ucom, &sc->sc_ucom, 1, sc,
     &uvscom_callback, &sc->sc_mtx);
 if (error) {
  goto detach;
 }
 ucom_set_pnpinfo_usb(&sc->sc_super_ucom, dev);


 mtx_lock(&sc->sc_mtx);
 usbd_transfer_start(sc->sc_xfer[UVSCOM_INTR_DT_RD]);
 mtx_unlock(&sc->sc_mtx);

 return (0);

detach:
 uvscom_detach(dev);
 return (ENXIO);
}
