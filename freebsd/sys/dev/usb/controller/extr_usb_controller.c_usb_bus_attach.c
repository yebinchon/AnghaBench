
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
struct usb_proc_msg {int dummy; } ;
struct usb_device {int dummy; } ;
struct usb_bus_msg {struct usb_bus* bus; } ;
struct usb_bus {int usbrev; int hw_power_state; int bdev; TYPE_2__** devices; TYPE_1__* methods; } ;
typedef enum usb_dev_speed { ____Placeholder_usb_dev_speed } usb_dev_speed ;
typedef int device_t ;
struct TYPE_4__ {int * hub; } ;
struct TYPE_3__ {int (* set_hw_power ) (struct usb_bus*) ;} ;


 int DPRINTF (char*) ;
 int USB_BUS_LOCK (struct usb_bus*) ;
 int USB_BUS_UNLOCK (struct usb_bus*) ;
 scalar_t__ USB_ERR_NOMEM ;
 scalar_t__ USB_ERR_NO_ROOT_HUB ;
 int USB_HW_POWER_BULK ;
 int USB_HW_POWER_CONTROL ;
 int USB_HW_POWER_INTERRUPT ;
 int USB_HW_POWER_ISOC ;
 int USB_HW_POWER_NON_ROOT_HUB ;
 int USB_IFACE_INDEX_ANY ;
 int USB_MODE_HOST ;





 size_t USB_ROOT_HUB_ADDR ;
 int USB_SPEED_FULL ;
 int USB_SPEED_HIGH ;
 int USB_SPEED_SUPER ;
 int USB_SPEED_VARIABLE ;
 int device_printf (int ,char*,...) ;
 int device_set_softc (int ,struct usb_bus*) ;
 int stub1 (struct usb_bus*) ;
 struct usb_device* usb_alloc_device (int ,struct usb_bus*,int *,int ,int ,int,int,int ) ;
 int usb_power_wdog (struct usb_bus*) ;
 scalar_t__ usb_probe_and_attach (struct usb_device*,int ) ;
 int usb_root_mount_rel (struct usb_bus*) ;
 int usbd_errstr (scalar_t__) ;

__attribute__((used)) static void
usb_bus_attach(struct usb_proc_msg *pm)
{
 struct usb_bus *bus;
 struct usb_device *child;
 device_t dev;
 usb_error_t err;
 enum usb_dev_speed speed;

 bus = ((struct usb_bus_msg *)pm)->bus;
 dev = bus->bdev;

 DPRINTF("\n");

 switch (bus->usbrev) {
 case 132:
  speed = USB_SPEED_FULL;
  device_printf(bus->bdev, "12Mbps Full Speed USB v1.0\n");
  break;

 case 131:
  speed = USB_SPEED_FULL;
  device_printf(bus->bdev, "12Mbps Full Speed USB v1.1\n");
  break;

 case 130:
  speed = USB_SPEED_HIGH;
  device_printf(bus->bdev, "480Mbps High Speed USB v2.0\n");
  break;

 case 129:
  speed = USB_SPEED_VARIABLE;
  device_printf(bus->bdev, "480Mbps Wireless USB v2.5\n");
  break;

 case 128:
  speed = USB_SPEED_SUPER;
  device_printf(bus->bdev, "5.0Gbps Super Speed USB v3.0\n");
  break;

 default:
  device_printf(bus->bdev, "Unsupported USB revision\n");



  return;
 }


 bus->hw_power_state =
   USB_HW_POWER_CONTROL |
   USB_HW_POWER_BULK |
   USB_HW_POWER_INTERRUPT |
   USB_HW_POWER_ISOC |
   USB_HW_POWER_NON_ROOT_HUB;

 USB_BUS_UNLOCK(bus);



 if (bus->methods->set_hw_power != ((void*)0)) {
  (bus->methods->set_hw_power) (bus);
 }



 child = usb_alloc_device(bus->bdev, bus, ((void*)0), 0, 0, 1,
     speed, USB_MODE_HOST);
 if (child) {
  err = usb_probe_and_attach(child,
      USB_IFACE_INDEX_ANY);
  if (!err) {
   if ((bus->devices[USB_ROOT_HUB_ADDR] == ((void*)0)) ||
       (bus->devices[USB_ROOT_HUB_ADDR]->hub == ((void*)0))) {
    err = USB_ERR_NO_ROOT_HUB;
   }
  }
 } else {
  err = USB_ERR_NOMEM;
 }

 USB_BUS_LOCK(bus);

 if (err) {
  device_printf(bus->bdev, "Root HUB problem, error=%s\n",
      usbd_errstr(err));



 }


 device_set_softc(dev, bus);


 usb_power_wdog(bus);
}
