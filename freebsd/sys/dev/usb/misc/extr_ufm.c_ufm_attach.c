
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bIfaceIndex; } ;
struct usb_attach_arg {TYPE_1__ info; int device; } ;
struct ufm_softc {int sc_fifo; int sc_mtx; int sc_name; int sc_unit; int sc_udev; } ;
typedef int device_t ;


 int ENXIO ;
 int GID_OPERATOR ;
 int MTX_DEF ;
 int MTX_RECURSE ;
 int UID_ROOT ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 char* device_get_nameunit (int ) ;
 struct ufm_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_set_usb_desc (int ) ;
 int mtx_init (int *,char*,int *,int) ;
 int snprintf (int ,int,char*,char*) ;
 int ufm_detach (int ) ;
 int ufm_fifo_methods ;
 int usb_fifo_attach (int ,struct ufm_softc*,int *,int *,int *,int ,int,int ,int ,int ,int) ;

__attribute__((used)) static int
ufm_attach(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct ufm_softc *sc = device_get_softc(dev);
 int error;

 sc->sc_udev = uaa->device;
 sc->sc_unit = device_get_unit(dev);

 snprintf(sc->sc_name, sizeof(sc->sc_name), "%s",
     device_get_nameunit(dev));

 mtx_init(&sc->sc_mtx, "ufm lock", ((void*)0), MTX_DEF | MTX_RECURSE);

 device_set_usb_desc(dev);

 error = usb_fifo_attach(uaa->device, sc, &sc->sc_mtx,
     &ufm_fifo_methods, &sc->sc_fifo,
     device_get_unit(dev), -1, uaa->info.bIfaceIndex,
     UID_ROOT, GID_OPERATOR, 0644);
 if (error) {
  goto detach;
 }
 return (0);

detach:
 ufm_detach(dev);
 return (ENXIO);
}
