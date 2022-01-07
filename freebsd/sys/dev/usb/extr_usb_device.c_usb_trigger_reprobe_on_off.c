
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
struct usb_port_status {int wPortStatus; } ;
struct usb_device {scalar_t__ refcount; int ref_cv; } ;
struct usb_bus {struct usb_device** devices; } ;


 int DPRINTF (char*,int ) ;
 int UGETW (int ) ;
 int UHF_PORT_POWER ;
 int UPS_PORT_MODE_DEVICE ;
 scalar_t__ USB_DEV_REF_MAX ;
 size_t USB_ROOT_HUB_ADDR ;
 int cv_broadcast (int *) ;
 int devclass_get_maxunit (int ) ;
 struct usb_bus* devclass_get_softc (int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int usb_devclass_ptr ;
 int usb_ref_lock ;
 int usbd_enum_lock (struct usb_device*) ;
 int usbd_enum_unlock (struct usb_device*) ;
 int usbd_errstr (scalar_t__) ;
 scalar_t__ usbd_req_clear_port_feature (struct usb_device*,int *,int,int ) ;
 scalar_t__ usbd_req_get_port_status (struct usb_device*,int *,struct usb_port_status*,int) ;
 scalar_t__ usbd_req_set_port_feature (struct usb_device*,int *,int,int ) ;

__attribute__((used)) static void
usb_trigger_reprobe_on_off(int on_not_off)
{
 struct usb_port_status ps;
 struct usb_bus *bus;
 struct usb_device *udev;
 usb_error_t err;
 int do_unlock, max;

 max = devclass_get_maxunit(usb_devclass_ptr);
 while (max >= 0) {
  mtx_lock(&usb_ref_lock);
  bus = devclass_get_softc(usb_devclass_ptr, max);
  max--;

  if (bus == ((void*)0) || bus->devices == ((void*)0) ||
      bus->devices[USB_ROOT_HUB_ADDR] == ((void*)0)) {
   mtx_unlock(&usb_ref_lock);
   continue;
  }

  udev = bus->devices[USB_ROOT_HUB_ADDR];

  if (udev->refcount == USB_DEV_REF_MAX) {
   mtx_unlock(&usb_ref_lock);
   continue;
  }

  udev->refcount++;
  mtx_unlock(&usb_ref_lock);

  do_unlock = usbd_enum_lock(udev);
  if (do_unlock > 1) {
   do_unlock = 0;
   goto next;
  }

  err = usbd_req_get_port_status(udev, ((void*)0), &ps, 1);
  if (err != 0) {
   DPRINTF("usbd_req_get_port_status() "
       "failed: %s\n", usbd_errstr(err));
   goto next;
  }

  if ((UGETW(ps.wPortStatus) & UPS_PORT_MODE_DEVICE) == 0)
   goto next;

  if (on_not_off) {
   err = usbd_req_set_port_feature(udev, ((void*)0), 1,
       UHF_PORT_POWER);
   if (err != 0) {
    DPRINTF("usbd_req_set_port_feature() "
        "failed: %s\n", usbd_errstr(err));
   }
  } else {
   err = usbd_req_clear_port_feature(udev, ((void*)0), 1,
       UHF_PORT_POWER);
   if (err != 0) {
    DPRINTF("usbd_req_clear_port_feature() "
        "failed: %s\n", usbd_errstr(err));
   }
  }

next:
  mtx_lock(&usb_ref_lock);
  if (do_unlock)
   usbd_enum_unlock(udev);
  if (--(udev->refcount) == 0)
   cv_broadcast(&udev->ref_cv);
  mtx_unlock(&usb_ref_lock);
 }
}
