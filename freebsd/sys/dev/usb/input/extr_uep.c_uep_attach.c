
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bIfaceIndex; int idProduct; int idVendor; } ;
struct usb_attach_arg {TYPE_1__ info; int device; } ;
struct uep_softc {scalar_t__ buf_len; int fifo; int mtx; int evdev; int xfer; } ;
typedef int device_t ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int BUS_USB ;
 int DPRINTF (char*,int ) ;
 int ENOMEM ;
 int EV_ABS ;
 int EV_KEY ;
 int EV_SYN ;
 int GID_OPERATOR ;
 int INPUT_PROP_DIRECT ;
 int MTX_DEF ;
 int UEP_MAX_X ;
 int UEP_MAX_Y ;
 int UEP_N_TRANSFER ;
 int UID_ROOT ;
 int device_get_desc (int ) ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 int device_get_nameunit (int ) ;
 struct uep_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_set_usb_desc (int ) ;
 int evdev_alloc () ;
 int evdev_register_mtx (int ,int *) ;
 int evdev_set_id (int ,int ,int ,int ,int ) ;
 int evdev_set_methods (int ,struct uep_softc*,int *) ;
 int evdev_set_name (int ,int ) ;
 int evdev_set_phys (int ,int ) ;
 int evdev_set_serial (int ,int ) ;
 int evdev_support_abs (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int evdev_support_event (int ,int ) ;
 int evdev_support_key (int ,int ) ;
 int evdev_support_prop (int ,int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int uep_config ;
 int uep_detach (int ) ;
 int uep_evdev_methods ;
 int uep_fifo_methods ;
 int usb_fifo_attach (int ,struct uep_softc*,int *,int *,int *,int ,int,int ,int ,int ,int) ;
 int usb_get_serial (int ) ;
 int usbd_errstr (int) ;
 int usbd_transfer_setup (int ,int *,int ,int ,int ,struct uep_softc*,int *) ;

__attribute__((used)) static int
uep_attach(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct uep_softc *sc = device_get_softc(dev);
 int error;

 device_set_usb_desc(dev);

 mtx_init(&sc->mtx, "uep lock", ((void*)0), MTX_DEF);

 error = usbd_transfer_setup(uaa->device, &uaa->info.bIfaceIndex,
     sc->xfer, uep_config, UEP_N_TRANSFER, sc, &sc->mtx);

 if (error) {
  DPRINTF("usbd_transfer_setup error=%s\n", usbd_errstr(error));
  goto detach;
 }
 error = usb_fifo_attach(uaa->device, sc, &sc->mtx, &uep_fifo_methods,
     &sc->fifo, device_get_unit(dev), -1, uaa->info.bIfaceIndex,
     UID_ROOT, GID_OPERATOR, 0644);

        if (error) {
  DPRINTF("usb_fifo_attach error=%s\n", usbd_errstr(error));
                goto detach;
        }


 sc->buf_len = 0;

 return (0);

detach:
 uep_detach(dev);

 return (ENOMEM);
}
