
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uslcom_softc {int sc_super_ucom; int sc_mtx; int sc_ucom; int sc_partnum; int * sc_xfer; int sc_iface_no; int sc_udev; int sc_watchdog; } ;
struct TYPE_2__ {int bIfaceIndex; int bIfaceNum; } ;
struct usb_attach_arg {TYPE_1__ info; int device; } ;
typedef int device_t ;


 int DPRINTF (char*,int ) ;
 int DPRINTFN (int,char*) ;
 int ENXIO ;
 int MTX_DEF ;
 size_t USLCOM_BULK_DT_RD ;
 size_t USLCOM_BULK_DT_WR ;
 int USLCOM_N_TRANSFER ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 struct uslcom_softc* device_get_softc (int ) ;
 int device_set_usb_desc (int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ucom_attach (int *,int *,int,struct uslcom_softc*,int *,int *) ;
 int ucom_ref (int *) ;
 int ucom_set_pnpinfo_usb (int *,int ) ;
 int usb_callout_init_mtx (int *,int *,int ) ;
 int usbd_errstr (int) ;
 int usbd_transfer_setup (int ,int *,int *,int ,int ,struct uslcom_softc*,int *) ;
 int usbd_xfer_set_stall (int ) ;
 int uslcom_callback ;
 int uslcom_config ;
 int uslcom_detach (int ) ;
 int uslcom_get_partnum (struct uslcom_softc*) ;

__attribute__((used)) static int
uslcom_attach(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct uslcom_softc *sc = device_get_softc(dev);
 int error;

 DPRINTFN(11, "\n");

 device_set_usb_desc(dev);
 mtx_init(&sc->sc_mtx, "uslcom", ((void*)0), MTX_DEF);
 ucom_ref(&sc->sc_super_ucom);
 usb_callout_init_mtx(&sc->sc_watchdog, &sc->sc_mtx, 0);

 sc->sc_udev = uaa->device;

 sc->sc_iface_no = uaa->info.bIfaceNum;

 error = usbd_transfer_setup(uaa->device,
     &uaa->info.bIfaceIndex, sc->sc_xfer, uslcom_config,
     USLCOM_N_TRANSFER, sc, &sc->sc_mtx);
 if (error) {
  DPRINTF("one or more missing USB endpoints, "
      "error=%s\n", usbd_errstr(error));
  goto detach;
 }

 mtx_lock(&sc->sc_mtx);
 usbd_xfer_set_stall(sc->sc_xfer[USLCOM_BULK_DT_WR]);
 usbd_xfer_set_stall(sc->sc_xfer[USLCOM_BULK_DT_RD]);
 mtx_unlock(&sc->sc_mtx);

 sc->sc_partnum = uslcom_get_partnum(sc);

 error = ucom_attach(&sc->sc_super_ucom, &sc->sc_ucom, 1, sc,
     &uslcom_callback, &sc->sc_mtx);
 if (error) {
  goto detach;
 }
 ucom_set_pnpinfo_usb(&sc->sc_super_ucom, dev);

 return (0);

detach:
 uslcom_detach(dev);
 return (ENXIO);
}
