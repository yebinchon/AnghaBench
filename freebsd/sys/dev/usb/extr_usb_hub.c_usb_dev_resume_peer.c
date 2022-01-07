
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* type_refs; int last_xfer_time; } ;
struct TYPE_4__ {scalar_t__ self_suspended; scalar_t__ usb_mode; scalar_t__ remote_wakeup; } ;
struct usb_device {TYPE_2__ pwr_save; TYPE_1__ flags; int port_no; struct usb_device* parent_hub; struct usb_bus* bus; } ;
struct usb_bus {TYPE_3__* methods; int hw_power_state; } ;
struct TYPE_6__ {int (* set_hw_power ) (struct usb_bus*) ;int (* device_resume ) (struct usb_device*) ;} ;


 int DPRINTF (char*,...) ;
 int DPRINTFN (int ,char*,...) ;
 size_t UE_BULK ;
 size_t UE_CONTROL ;
 size_t UE_INTERRUPT ;
 size_t UE_ISOCHRONOUS ;
 int UF_DEVICE_REMOTE_WAKEUP ;
 int UHF_PORT_SUSPEND ;
 int UPS_PORT_LS_U0 ;
 int USB_BUS_LOCK (struct usb_bus*) ;
 int USB_BUS_UNLOCK (struct usb_bus*) ;
 int USB_HW_POWER_BULK ;
 int USB_HW_POWER_CONTROL ;
 int USB_HW_POWER_INTERRUPT ;
 int USB_HW_POWER_ISOC ;
 scalar_t__ USB_MODE_DEVICE ;
 int USB_MS_TO_TICKS (int) ;
 int stub1 (struct usb_device*) ;
 int stub2 (struct usb_bus*) ;
 int ticks ;
 scalar_t__ usb_device_20_compatible (struct usb_device*) ;
 int usb_pause_mtx (int *,int ) ;
 scalar_t__ usb_peer_can_wakeup (struct usb_device*) ;
 int usb_port_resume_delay ;
 int usb_suspend_resume (struct usb_device*,int ) ;
 int usbd_errstr (int) ;
 int usbd_req_clear_device_feature (struct usb_device*,int *,int ) ;
 int usbd_req_clear_port_feature (struct usb_device*,int *,int ,int ) ;
 int usbd_req_set_port_link_state (struct usb_device*,int *,int ,int ) ;
 int usbd_sr_lock (struct usb_device*) ;
 int usbd_sr_unlock (struct usb_device*) ;

__attribute__((used)) static void
usb_dev_resume_peer(struct usb_device *udev)
{
 struct usb_bus *bus;
 int err;


 if (udev == ((void*)0))
  return;


 if (udev->flags.self_suspended == 0)
  return;


 if (udev->parent_hub == ((void*)0))
  return;

 DPRINTF("udev=%p\n", udev);

 if ((udev->flags.usb_mode == USB_MODE_DEVICE) &&
     (udev->flags.remote_wakeup == 0)) {




  DPRINTF("remote wakeup is not set!\n");
  return;
 }

 bus = udev->bus;


 usb_dev_resume_peer(udev->parent_hub);


 usb_pause_mtx(((void*)0), USB_MS_TO_TICKS(20));

 if (usb_device_20_compatible(udev)) {

  err = usbd_req_clear_port_feature(udev->parent_hub,
      ((void*)0), udev->port_no, UHF_PORT_SUSPEND);
  if (err) {
   DPRINTFN(0, "Resuming port failed\n");
   return;
  }
 } else {

  err = usbd_req_set_port_link_state(udev->parent_hub,
      ((void*)0), udev->port_no, UPS_PORT_LS_U0);
  if (err) {
   DPRINTFN(0, "Resuming port failed\n");
   return;
  }
 }


 usb_pause_mtx(((void*)0), USB_MS_TO_TICKS(usb_port_resume_delay));

 if (bus->methods->device_resume != ((void*)0)) {

  (bus->methods->device_resume) (udev);
 }
 USB_BUS_LOCK(bus);

 udev->flags.self_suspended = 0;
 USB_BUS_UNLOCK(bus);

 if (bus->methods->set_hw_power != ((void*)0)) {

  (bus->methods->set_hw_power) (bus);
 }

 usbd_sr_lock(udev);


 err = usb_suspend_resume(udev, 0);

 usbd_sr_unlock(udev);


 if (usb_peer_can_wakeup(udev)) {

  err = usbd_req_clear_device_feature(udev,
      ((void*)0), UF_DEVICE_REMOTE_WAKEUP);
  if (err) {
   DPRINTFN(0, "Clearing device "
       "remote wakeup failed: %s\n",
       usbd_errstr(err));
  }
 }
}
