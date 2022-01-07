
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct usb_hub {scalar_t__ nports; scalar_t__ ports; int * tt_msg; } ;
struct usb_device {int dummy; } ;
struct usb_bus {int dummy; } ;
struct uhub_softc {int sc_mtx; TYPE_1__* sc_udev; int sc_xfer; } ;
typedef int device_t ;
struct TYPE_2__ {struct usb_hub* hub; struct usb_bus* bus; } ;


 int M_USBDEV ;
 int UHUB_N_TRANSFER ;
 int USB_BUS_LOCK (struct usb_bus*) ;
 int USB_BUS_TT_PROC (struct usb_bus*) ;
 int USB_BUS_UNLOCK (struct usb_bus*) ;
 struct uhub_softc* device_get_softc (int ) ;
 int free (struct usb_hub*,int ) ;
 int mtx_destroy (int *) ;
 struct usb_device* usb_bus_port_get_device (struct usb_bus*,scalar_t__) ;
 int usb_free_device (struct usb_device*,int ) ;
 int usb_proc_mwait (int ,int *,int *) ;
 int usbd_transfer_unsetup (int ,int ) ;

int
uhub_detach(device_t dev)
{
 struct uhub_softc *sc = device_get_softc(dev);
 struct usb_hub *hub = sc->sc_udev->hub;
 struct usb_bus *bus = sc->sc_udev->bus;
 struct usb_device *child;
 uint8_t x;

 if (hub == ((void*)0))
  return (0);


 usbd_transfer_unsetup(sc->sc_xfer, UHUB_N_TRANSFER);


 for (x = 0; x != hub->nports; x++) {

  child = usb_bus_port_get_device(bus, hub->ports + x);

  if (child == ((void*)0)) {
   continue;
  }




  usb_free_device(child, 0);
 }
 free(hub, M_USBDEV);

 sc->sc_udev->hub = ((void*)0);

 mtx_destroy(&sc->sc_mtx);

 return (0);
}
