
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
typedef scalar_t__ uint8_t ;
struct usb_port {int dummy; } ;
struct TYPE_4__ {scalar_t__ usb_mode; } ;
struct usb_device {scalar_t__ driver_added_refcount; TYPE_2__* hub; TYPE_1__ flags; } ;
struct usb_bus {scalar_t__ driver_added_refcount; } ;
struct uhub_softc {TYPE_3__* sc_udev; } ;
struct TYPE_6__ {struct usb_bus* bus; } ;
struct TYPE_5__ {scalar_t__ (* explore ) (struct usb_device*) ;} ;


 int USB_IFACE_INDEX_ANY ;
 scalar_t__ USB_MODE_DEVICE ;
 scalar_t__ stub1 (struct usb_device*) ;
 int uhub_explore_handle_re_enumerate (struct usb_device*) ;
 struct usb_device* usb_bus_port_get_device (struct usb_bus*,struct usb_port*) ;
 scalar_t__ usb_probe_and_attach (struct usb_device*,int ) ;
 int usbd_ctrl_transfer_setup (struct usb_device*) ;

__attribute__((used)) static usb_error_t
uhub_explore_sub(struct uhub_softc *sc, struct usb_port *up)
{
 struct usb_bus *bus;
 struct usb_device *child;
 uint8_t refcount;
 usb_error_t err;

 bus = sc->sc_udev->bus;
 err = 0;


 refcount = bus->driver_added_refcount;


 child = usb_bus_port_get_device(bus, up);
 if (child == ((void*)0)) {

  goto done;
 }

 uhub_explore_handle_re_enumerate(child);



 if (child->driver_added_refcount != refcount) {
  child->driver_added_refcount = refcount;
  err = usb_probe_and_attach(child,
      USB_IFACE_INDEX_ANY);
  if (err) {
   goto done;
  }
 }


 if (child->flags.usb_mode == USB_MODE_DEVICE)
  usbd_ctrl_transfer_setup(child);



 if (child->hub)
  err = (child->hub->explore) (child);

done:
 return (err);
}
