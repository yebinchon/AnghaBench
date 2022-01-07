
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
struct usb_bus {int hw_power_state; int * bdev; TYPE_1__* methods; scalar_t__ no_explore; struct usb_device** devices; } ;
struct TYPE_2__ {int (* set_hw_power ) (struct usb_bus*) ;int (* set_hw_power_sleep ) (struct usb_bus*,int ) ;} ;


 int DEVMETHOD (int ,int *) ;
 int DPRINTF (char*) ;
 int USB_BUS_LOCK (struct usb_bus*) ;
 int USB_BUS_UNLOCK (struct usb_bus*) ;
 int USB_HW_POWER_BULK ;
 int USB_HW_POWER_CONTROL ;
 int USB_HW_POWER_INTERRUPT ;
 int USB_HW_POWER_ISOC ;
 int USB_HW_POWER_NON_ROOT_HUB ;
 int USB_HW_POWER_RESUME ;
 int USB_IFACE_INDEX_ANY ;
 size_t USB_ROOT_HUB_ADDR ;
 int USB_TAKE_CONTROLLER (int ) ;
 int device_get_parent (int *) ;
 int device_printf (int *,char*) ;
 int stub1 (struct usb_bus*,int ) ;
 int stub2 (struct usb_bus*) ;
 scalar_t__ usb_probe_and_attach (struct usb_device*,int ) ;
 int usb_take_controller ;
 scalar_t__ usbd_enum_lock (struct usb_device*) ;
 int usbd_enum_unlock (struct usb_device*) ;
 scalar_t__ usbd_set_config_index (struct usb_device*,int ) ;

__attribute__((used)) static void
usb_bus_resume(struct usb_proc_msg *pm)
{
 struct usb_bus *bus;
 struct usb_device *udev;
 usb_error_t err;
 uint8_t do_unlock;

 DPRINTF("\n");

 bus = ((struct usb_bus_msg *)pm)->bus;
 udev = bus->devices[USB_ROOT_HUB_ADDR];

 if (udev == ((void*)0) || bus->bdev == ((void*)0))
  return;

 USB_BUS_UNLOCK(bus);

 do_unlock = usbd_enum_lock(udev);



 USB_TAKE_CONTROLLER(device_get_parent(bus->bdev));

 USB_BUS_LOCK(bus);
  bus->hw_power_state =
   USB_HW_POWER_CONTROL |
   USB_HW_POWER_BULK |
   USB_HW_POWER_INTERRUPT |
   USB_HW_POWER_ISOC |
   USB_HW_POWER_NON_ROOT_HUB;
 bus->no_explore = 0;
 USB_BUS_UNLOCK(bus);

 if (bus->methods->set_hw_power_sleep != ((void*)0))
  (bus->methods->set_hw_power_sleep) (bus, USB_HW_POWER_RESUME);

 if (bus->methods->set_hw_power != ((void*)0))
  (bus->methods->set_hw_power) (bus);


 err = usbd_set_config_index(udev, 0);
 if (err)
  device_printf(bus->bdev, "Could not configure root HUB\n");


 err = usb_probe_and_attach(udev, USB_IFACE_INDEX_ANY);
 if (err) {
  device_printf(bus->bdev, "Could not probe and "
      "attach root HUB\n");
 }

 if (do_unlock)
  usbd_enum_unlock(udev);

 USB_BUS_LOCK(bus);
}
