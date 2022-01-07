
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
typedef scalar_t__ uint8_t ;
struct usb_proc_msg {int dummy; } ;
struct usb_device {int dummy; } ;
struct usb_bus_msg {struct usb_bus* bus; } ;
struct usb_bus {int no_explore; TYPE_1__* methods; scalar_t__ hw_power_state; int * bdev; struct usb_device** devices; } ;
struct TYPE_2__ {int (* set_hw_power_sleep ) (struct usb_bus*,int ) ;int (* set_hw_power ) (struct usb_bus*) ;} ;


 int USB_BUS_LOCK (struct usb_bus*) ;
 int USB_BUS_UNLOCK (struct usb_bus*) ;
 int USB_HW_POWER_SHUTDOWN ;
 size_t USB_ROOT_HUB_ADDR ;
 int USB_UNCONFIG_INDEX ;
 int bus_generic_shutdown (int *) ;
 int device_printf (int *,char*) ;
 int stub1 (struct usb_bus*) ;
 int stub2 (struct usb_bus*,int ) ;
 scalar_t__ usbd_enum_lock (struct usb_device*) ;
 int usbd_enum_unlock (struct usb_device*) ;
 scalar_t__ usbd_set_config_index (struct usb_device*,int ) ;

__attribute__((used)) static void
usb_bus_shutdown(struct usb_proc_msg *pm)
{
 struct usb_bus *bus;
 struct usb_device *udev;
 usb_error_t err;
 uint8_t do_unlock;

 bus = ((struct usb_bus_msg *)pm)->bus;
 udev = bus->devices[USB_ROOT_HUB_ADDR];

 if (udev == ((void*)0) || bus->bdev == ((void*)0))
  return;

 USB_BUS_UNLOCK(bus);

 bus_generic_shutdown(bus->bdev);

 do_unlock = usbd_enum_lock(udev);

 err = usbd_set_config_index(udev, USB_UNCONFIG_INDEX);
 if (err)
  device_printf(bus->bdev, "Could not unconfigure root HUB\n");

 USB_BUS_LOCK(bus);
 bus->hw_power_state = 0;
 bus->no_explore = 1;
 USB_BUS_UNLOCK(bus);

 if (bus->methods->set_hw_power != ((void*)0))
  (bus->methods->set_hw_power) (bus);

 if (bus->methods->set_hw_power_sleep != ((void*)0))
  (bus->methods->set_hw_power_sleep) (bus, USB_HW_POWER_SHUTDOWN);

 if (do_unlock)
  usbd_enum_unlock(udev);

 USB_BUS_LOCK(bus);
}
