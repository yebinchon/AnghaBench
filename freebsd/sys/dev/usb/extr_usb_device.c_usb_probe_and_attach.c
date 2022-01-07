
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int usb_error_t ;
typedef scalar_t__ uint8_t ;
struct usb_interface {TYPE_1__* idesc; } ;
struct usb_device {scalar_t__ curr_config_index; int parent_dev; } ;
struct TYPE_4__ {int bIfaceNum; scalar_t__ bIfaceIndex; int bInterfaceProtocol; int bInterfaceSubClass; int bInterfaceClass; } ;
struct usb_attach_arg {scalar_t__ dev_state; int * temp_dev; TYPE_2__ info; scalar_t__ driver_info; struct usb_interface* iface; } ;
struct TYPE_3__ {int bInterfaceNumber; int bInterfaceProtocol; int bInterfaceSubClass; int bInterfaceClass; } ;


 int DPRINTF (char*) ;
 int DPRINTFN (int,char*,...) ;
 int EVENTHANDLER_INVOKE (int ,struct usb_device*,struct usb_attach_arg*) ;
 scalar_t__ UAA_DEV_EJECTING ;
 scalar_t__ UAA_DEV_READY ;
 int UQ_MSC_DYMO_EJECT ;
 int USB_ERR_INVAL ;
 scalar_t__ USB_IFACE_INDEX_ANY ;
 scalar_t__ USB_IFACE_MAX ;
 scalar_t__ USB_UNCONFIG_INDEX ;
 scalar_t__ device_delete_child (int ,int *) ;
 int usb_dev_configured ;
 scalar_t__ usb_dymo_eject (struct usb_device*,int ) ;
 int usb_init_attach_arg (struct usb_device*,struct usb_attach_arg*) ;
 int usb_probe_and_attach_sub (struct usb_device*,struct usb_attach_arg*) ;
 scalar_t__ usb_test_quirk (struct usb_attach_arg*,int ) ;
 int usb_unconfigure (struct usb_device*,int ) ;
 scalar_t__ usbd_enum_lock (struct usb_device*) ;
 int usbd_enum_unlock (struct usb_device*) ;
 struct usb_interface* usbd_get_iface (struct usb_device*,scalar_t__) ;

usb_error_t
usb_probe_and_attach(struct usb_device *udev, uint8_t iface_index)
{
 struct usb_attach_arg uaa;
 struct usb_interface *iface;
 uint8_t i;
 uint8_t j;
 uint8_t do_unlock;

 if (udev == ((void*)0)) {
  DPRINTF("udev == NULL\n");
  return (USB_ERR_INVAL);
 }

 do_unlock = usbd_enum_lock(udev);

 if (udev->curr_config_index == USB_UNCONFIG_INDEX) {

  goto done;
 }


 usb_init_attach_arg(udev, &uaa);





 if (iface_index == USB_IFACE_INDEX_ANY) {

  if (usb_test_quirk(&uaa, UQ_MSC_DYMO_EJECT) != 0 &&
      usb_dymo_eject(udev, 0) == 0) {

   uaa.dev_state = UAA_DEV_EJECTING;
  }

  EVENTHANDLER_INVOKE(usb_dev_configured, udev, &uaa);

  if (uaa.dev_state != UAA_DEV_READY) {

   usb_unconfigure(udev, 0);
   goto done;
  }
 }


 if (iface_index != USB_IFACE_INDEX_ANY) {
  i = iface_index;
  j = i + 1;
 } else {
  i = 0;
  j = USB_IFACE_MAX;
 }


 for (; i != j; i++) {

  iface = usbd_get_iface(udev, i);
  if (iface == ((void*)0)) {




   DPRINTFN(2, "end of interfaces "
       "at %u\n", i);
   break;
  }
  if (iface->idesc == ((void*)0)) {

   continue;
  }
  uaa.iface = iface;

  uaa.info.bInterfaceClass =
      iface->idesc->bInterfaceClass;
  uaa.info.bInterfaceSubClass =
      iface->idesc->bInterfaceSubClass;
  uaa.info.bInterfaceProtocol =
      iface->idesc->bInterfaceProtocol;
  uaa.info.bIfaceIndex = i;
  uaa.info.bIfaceNum =
      iface->idesc->bInterfaceNumber;
  uaa.driver_info = 0;

  DPRINTFN(2, "iclass=%u/%u/%u iindex=%u/%u\n",
      uaa.info.bInterfaceClass,
      uaa.info.bInterfaceSubClass,
      uaa.info.bInterfaceProtocol,
      uaa.info.bIfaceIndex,
      uaa.info.bIfaceNum);

  usb_probe_and_attach_sub(udev, &uaa);






  if (uaa.temp_dev == ((void*)0))
   continue;
  if (device_delete_child(udev->parent_dev, uaa.temp_dev))
   DPRINTFN(0, "device delete child failed\n");
  uaa.temp_dev = ((void*)0);
 }
done:
 if (do_unlock)
  usbd_enum_unlock(udev);
 return (0);
}
