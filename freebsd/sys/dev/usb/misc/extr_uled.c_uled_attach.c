
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
struct TYPE_3__ {int bIfaceIndex; } ;
struct usb_attach_arg {TYPE_1__ info; int device; } ;
struct TYPE_4__ {scalar_t__ blue; scalar_t__ green; scalar_t__ red; } ;
struct uled_softc {TYPE_2__ sc_color; int sc_fifo; int sc_mtx; int sc_udev; int sc_flags; } ;
typedef int device_t ;


 int ENOMEM ;
 int GID_OPERATOR ;
 int MTX_DEF ;
 int MTX_RECURSE ;
 int UID_ROOT ;
 int USB_GET_DRIVER_INFO (struct usb_attach_arg*) ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 struct uled_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_set_usb_desc (int ) ;
 int mtx_init (int *,char*,int *,int) ;
 int uled_detach (int ) ;
 int uled_fifo_methods ;
 scalar_t__ usb_fifo_attach (int ,struct uled_softc*,int *,int *,int *,int,int,int ,int ,int ,int) ;

__attribute__((used)) static int
uled_attach(device_t dev)
{
 struct usb_attach_arg *uaa;
 struct uled_softc *sc;
 int unit;
 usb_error_t error;

 uaa = device_get_ivars(dev);
 sc = device_get_softc(dev);
 unit = device_get_unit(dev);
 sc->sc_flags = USB_GET_DRIVER_INFO(uaa);

 device_set_usb_desc(dev);
 mtx_init(&sc->sc_mtx, "uled lock", ((void*)0), MTX_DEF | MTX_RECURSE);

 sc->sc_udev = uaa->device;

 error = usb_fifo_attach(uaa->device, sc, &sc->sc_mtx,
     &uled_fifo_methods, &sc->sc_fifo, unit, -1,
     uaa->info.bIfaceIndex, UID_ROOT, GID_OPERATOR, 0644);
 if (error != 0)
  goto detach;

 sc->sc_color.red = 0;
 sc->sc_color.green = 0;
 sc->sc_color.blue = 0;

 return (0);

detach:
 uled_detach(dev);
 return (ENOMEM);
}
