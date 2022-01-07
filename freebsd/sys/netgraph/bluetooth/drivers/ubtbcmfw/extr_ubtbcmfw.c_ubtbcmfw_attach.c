
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int bIfaceIndex; } ;
struct usb_attach_arg {TYPE_1__ info; int device; } ;
struct ubtbcmfw_softc {int sc_fifo; int sc_mtx; int sc_xfer; int sc_udev; } ;
typedef int device_t ;


 int ENXIO ;
 int GID_OPERATOR ;
 int MTX_DEF ;
 int MTX_RECURSE ;
 int UBTBCMFW_IFACE_IDX ;
 int UBTBCMFW_N_TRANSFER ;
 int UID_ROOT ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 struct ubtbcmfw_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,int ) ;
 int device_set_usb_desc (int ) ;
 int mtx_init (int *,char*,int *,int) ;
 int ubtbcmfw_config ;
 int ubtbcmfw_detach (int ) ;
 int ubtbcmfw_fifo_methods ;
 int usb_fifo_attach (int ,struct ubtbcmfw_softc*,int *,int *,int *,int ,scalar_t__,int ,int ,int ,int) ;
 int usbd_errstr (int) ;
 int usbd_transfer_setup (int ,int *,int ,int ,int ,struct ubtbcmfw_softc*,int *) ;

__attribute__((used)) static int
ubtbcmfw_attach(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct ubtbcmfw_softc *sc = device_get_softc(dev);
 uint8_t iface_index;
 int error;

 sc->sc_udev = uaa->device;

 device_set_usb_desc(dev);

 mtx_init(&sc->sc_mtx, "ubtbcmfw lock", ((void*)0), MTX_DEF | MTX_RECURSE);

 iface_index = UBTBCMFW_IFACE_IDX;
 error = usbd_transfer_setup(uaa->device, &iface_index, sc->sc_xfer,
    ubtbcmfw_config, UBTBCMFW_N_TRANSFER,
    sc, &sc->sc_mtx);
 if (error != 0) {
  device_printf(dev, "allocating USB transfers failed. %s\n",
   usbd_errstr(error));
  goto detach;
 }

 error = usb_fifo_attach(uaa->device, sc, &sc->sc_mtx,
   &ubtbcmfw_fifo_methods, &sc->sc_fifo,
   device_get_unit(dev), 0 - 1, uaa->info.bIfaceIndex,
   UID_ROOT, GID_OPERATOR, 0644);
 if (error != 0) {
  device_printf(dev, "could not attach fifo. %s\n",
   usbd_errstr(error));
  goto detach;
 }

 return (0);

detach:
 ubtbcmfw_detach(dev);

 return (ENXIO);
}
