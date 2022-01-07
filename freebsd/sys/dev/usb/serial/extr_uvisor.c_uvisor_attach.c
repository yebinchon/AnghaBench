
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uvisor_config_copy ;
struct uvisor_softc {int sc_super_ucom; int sc_mtx; int sc_ucom; int sc_xfer; int sc_iface_index; int sc_iface_no; int sc_flag; int sc_udev; } ;
struct usb_config {int dummy; } ;
struct TYPE_2__ {int bIfaceNum; } ;
struct usb_attach_arg {int device; TYPE_1__ info; } ;
typedef int device_t ;


 int DPRINTF (char*,...) ;
 int ENXIO ;
 int MTX_DEF ;
 int USB_GET_DRIVER_INFO (struct usb_attach_arg*) ;
 int UVISOR_IFACE_INDEX ;
 int UVISOR_N_TRANSFER ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 struct uvisor_softc* device_get_softc (int ) ;
 int device_set_usb_desc (int ) ;
 int memcpy (struct usb_config*,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int ucom_attach (int *,int *,int,struct uvisor_softc*,int *,int *) ;
 int ucom_ref (int *) ;
 int ucom_set_pnpinfo_usb (int *,int ) ;
 int usbd_errstr (int) ;
 int usbd_transfer_setup (int ,int *,int ,struct usb_config*,int,struct uvisor_softc*,int *) ;
 int uvisor_callback ;
 int uvisor_config ;
 int uvisor_detach (int ) ;
 int uvisor_init (struct uvisor_softc*,int ,struct usb_config*) ;

__attribute__((used)) static int
uvisor_attach(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct uvisor_softc *sc = device_get_softc(dev);
 struct usb_config uvisor_config_copy[UVISOR_N_TRANSFER];
 int error;

 DPRINTF("sc=%p\n", sc);
 memcpy(uvisor_config_copy, uvisor_config,
     sizeof(uvisor_config_copy));

 device_set_usb_desc(dev);

 mtx_init(&sc->sc_mtx, "uvisor", ((void*)0), MTX_DEF);
 ucom_ref(&sc->sc_super_ucom);

 sc->sc_udev = uaa->device;



 sc->sc_flag = USB_GET_DRIVER_INFO(uaa);
 sc->sc_iface_no = uaa->info.bIfaceNum;
 sc->sc_iface_index = UVISOR_IFACE_INDEX;

 error = uvisor_init(sc, uaa->device, uvisor_config_copy);

 if (error) {
  DPRINTF("init failed, error=%s\n",
      usbd_errstr(error));
  goto detach;
 }
 error = usbd_transfer_setup(uaa->device, &sc->sc_iface_index,
     sc->sc_xfer, uvisor_config_copy, UVISOR_N_TRANSFER,
     sc, &sc->sc_mtx);
 if (error) {
  DPRINTF("could not allocate all pipes\n");
  goto detach;
 }

 error = ucom_attach(&sc->sc_super_ucom, &sc->sc_ucom, 1, sc,
     &uvisor_callback, &sc->sc_mtx);
 if (error) {
  DPRINTF("ucom_attach failed\n");
  goto detach;
 }
 ucom_set_pnpinfo_usb(&sc->sc_super_ucom, dev);

 return (0);

detach:
 uvisor_detach(dev);
 return (ENXIO);
}
