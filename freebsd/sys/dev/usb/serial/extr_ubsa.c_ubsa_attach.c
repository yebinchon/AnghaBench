
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bIfaceNum; } ;
struct usb_attach_arg {int device; TYPE_1__ info; } ;
struct ubsa_softc {int sc_super_ucom; int sc_mtx; int sc_ucom; int * sc_xfer; int sc_iface_index; int sc_iface_no; int sc_udev; } ;
typedef int device_t ;


 int DPRINTF (char*,...) ;
 int ENXIO ;
 int MTX_DEF ;
 size_t UBSA_BULK_DT_RD ;
 size_t UBSA_BULK_DT_WR ;
 int UBSA_IFACE_INDEX ;
 int UBSA_N_TRANSFER ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 struct ubsa_softc* device_get_softc (int ) ;
 int device_set_usb_desc (int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ubsa_callback ;
 int ubsa_config ;
 int ubsa_detach (int ) ;
 int ucom_attach (int *,int *,int,struct ubsa_softc*,int *,int *) ;
 int ucom_ref (int *) ;
 int ucom_set_pnpinfo_usb (int *,int ) ;
 int usbd_transfer_setup (int ,int *,int *,int ,int ,struct ubsa_softc*,int *) ;
 int usbd_xfer_set_stall (int ) ;

__attribute__((used)) static int
ubsa_attach(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct ubsa_softc *sc = device_get_softc(dev);
 int error;

 DPRINTF("sc=%p\n", sc);

 device_set_usb_desc(dev);
 mtx_init(&sc->sc_mtx, "ubsa", ((void*)0), MTX_DEF);
 ucom_ref(&sc->sc_super_ucom);

 sc->sc_udev = uaa->device;
 sc->sc_iface_no = uaa->info.bIfaceNum;
 sc->sc_iface_index = UBSA_IFACE_INDEX;

 error = usbd_transfer_setup(uaa->device, &sc->sc_iface_index,
     sc->sc_xfer, ubsa_config, UBSA_N_TRANSFER, sc, &sc->sc_mtx);

 if (error) {
  DPRINTF("could not allocate all pipes\n");
  goto detach;
 }

 mtx_lock(&sc->sc_mtx);
 usbd_xfer_set_stall(sc->sc_xfer[UBSA_BULK_DT_WR]);
 usbd_xfer_set_stall(sc->sc_xfer[UBSA_BULK_DT_RD]);
 mtx_unlock(&sc->sc_mtx);

 error = ucom_attach(&sc->sc_super_ucom, &sc->sc_ucom, 1, sc,
     &ubsa_callback, &sc->sc_mtx);
 if (error) {
  DPRINTF("ucom_attach failed\n");
  goto detach;
 }
 ucom_set_pnpinfo_usb(&sc->sc_super_ucom, dev);

 return (0);

detach:
 ubsa_detach(dev);
 return (ENXIO);
}
