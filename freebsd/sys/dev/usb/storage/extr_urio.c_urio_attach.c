
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bIfaceIndex; } ;
struct usb_attach_arg {TYPE_1__ info; int device; } ;
struct urio_softc {int sc_fifo; int sc_mtx; int sc_xfer; int sc_name; int sc_udev; } ;
typedef int device_t ;


 int DPRINTF (char*,int ) ;
 int ENOMEM ;
 int GID_OPERATOR ;
 int MTX_DEF ;
 int MTX_RECURSE ;
 int UID_ROOT ;
 int URIO_T_MAX ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 char* device_get_nameunit (int ) ;
 struct urio_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_set_usb_desc (int ) ;
 int mtx_init (int *,char*,int *,int) ;
 int snprintf (int ,int,char*,char*) ;
 int urio_config ;
 int urio_detach (int ) ;
 int urio_fifo_methods ;
 int usb_fifo_attach (int ,struct urio_softc*,int *,int *,int *,int ,int,int ,int ,int ,int) ;
 int usbd_errstr (int) ;
 int usbd_transfer_setup (int ,int *,int ,int ,int ,struct urio_softc*,int *) ;

__attribute__((used)) static int
urio_attach(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct urio_softc *sc = device_get_softc(dev);
 int error;

 device_set_usb_desc(dev);

 sc->sc_udev = uaa->device;

 mtx_init(&sc->sc_mtx, "urio lock", ((void*)0), MTX_DEF | MTX_RECURSE);

 snprintf(sc->sc_name, sizeof(sc->sc_name),
     "%s", device_get_nameunit(dev));

 error = usbd_transfer_setup(uaa->device,
     &uaa->info.bIfaceIndex, sc->sc_xfer,
     urio_config, URIO_T_MAX, sc, &sc->sc_mtx);

 if (error) {
  DPRINTF("error=%s\n", usbd_errstr(error));
  goto detach;
 }

 error = usb_fifo_attach(uaa->device, sc, &sc->sc_mtx,
     &urio_fifo_methods, &sc->sc_fifo,
     device_get_unit(dev), -1, uaa->info.bIfaceIndex,
     UID_ROOT, GID_OPERATOR, 0644);
 if (error) {
  goto detach;
 }
 return (0);

detach:
 urio_detach(dev);
 return (ENOMEM);
}
