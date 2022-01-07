
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int usb_timeout_t ;
typedef scalar_t__ uint8_t ;
struct TYPE_8__ {int self_suspended; scalar_t__ usb_mode; } ;
struct usb_device {struct usb_device* parent_hub; int port_no; TYPE_4__* bus; TYPE_2__ flags; TYPE_1__* hub; } ;
struct TYPE_10__ {TYPE_3__* methods; } ;
struct TYPE_9__ {int (* device_suspend ) (struct usb_device*) ;} ;
struct TYPE_7__ {scalar_t__ nports; scalar_t__ ports; } ;


 int DPRINTF (char*,...) ;
 int DPRINTFN (int,char*,...) ;
 int UF_DEVICE_REMOTE_WAKEUP ;
 int UHF_PORT_SUSPEND ;
 int UPS_PORT_LS_U3 ;
 int USB_BUS_LOCK (TYPE_4__*) ;
 int USB_BUS_UNLOCK (TYPE_4__*) ;
 scalar_t__ USB_MODE_DEVICE ;
 int USB_MS_TO_TICKS (int) ;
 int stub1 (struct usb_device*) ;
 struct usb_device* usb_bus_port_get_device (TYPE_4__*,scalar_t__) ;
 int usb_dev_resume_peer (struct usb_device*) ;
 scalar_t__ usb_device_20_compatible (struct usb_device*) ;
 int usb_pause_mtx (int *,int ) ;
 scalar_t__ usb_peer_can_wakeup (struct usb_device*) ;
 int usb_peer_should_wakeup (struct usb_device*) ;
 int usb_port_resume_delay ;
 int usb_suspend_resume (struct usb_device*,int) ;
 int usbd_get_dma_delay (struct usb_device*) ;
 int usbd_req_clear_device_feature (struct usb_device*,int *,int ) ;
 int usbd_req_clear_port_feature (struct usb_device*,int *,int ,int ) ;
 int usbd_req_set_device_feature (struct usb_device*,int *,int ) ;
 int usbd_req_set_port_feature (struct usb_device*,int *,int ,int ) ;
 int usbd_req_set_port_link_state (struct usb_device*,int *,int ,int ) ;
 int usbd_sr_lock (struct usb_device*) ;
 int usbd_sr_unlock (struct usb_device*) ;

__attribute__((used)) static void
usb_dev_suspend_peer(struct usb_device *udev)
{
 struct usb_device *child;
 int err;
 uint8_t x;
 uint8_t nports;

repeat:

 if (udev == ((void*)0))
  return;


 if (udev->flags.self_suspended)
  return;


 if (udev->parent_hub == ((void*)0))
  return;

 DPRINTF("udev=%p\n", udev);


 if (udev->hub != ((void*)0)) {
  nports = udev->hub->nports;


  for (x = 0; x != nports; x++) {
   child = usb_bus_port_get_device(udev->bus,
       udev->hub->ports + x);

   if (child == ((void*)0))
    continue;

   if (child->flags.self_suspended)
    continue;

   DPRINTFN(1, "Port %u is busy on the HUB!\n", x + 1);
   return;
  }
 }

 if (usb_peer_can_wakeup(udev)) {






  err = usbd_req_set_device_feature(udev,
      ((void*)0), UF_DEVICE_REMOTE_WAKEUP);
  if (err) {
   DPRINTFN(0, "Setting device "
       "remote wakeup failed\n");
  }
 }

 USB_BUS_LOCK(udev->bus);




 err = usb_peer_should_wakeup(udev);
 if (err == 0) {





  udev->flags.self_suspended = 1;
 }
 USB_BUS_UNLOCK(udev->bus);

 if (err != 0) {
  if (usb_peer_can_wakeup(udev)) {

   err = usbd_req_clear_device_feature(udev,
       ((void*)0), UF_DEVICE_REMOTE_WAKEUP);
   if (err) {
    DPRINTFN(0, "Setting device "
        "remote wakeup failed\n");
   }
  }

  if (udev->flags.usb_mode == USB_MODE_DEVICE) {

   usb_dev_resume_peer(udev->parent_hub);


   usb_pause_mtx(((void*)0), USB_MS_TO_TICKS(20));


   err = usbd_req_clear_port_feature(udev->parent_hub,
       ((void*)0), udev->port_no, UHF_PORT_SUSPEND);


   usb_pause_mtx(((void*)0), USB_MS_TO_TICKS(usb_port_resume_delay));
  }
  DPRINTF("Suspend was cancelled!\n");
  return;
 }

 usbd_sr_lock(udev);


 err = usb_suspend_resume(udev, 1);

 usbd_sr_unlock(udev);

 if (udev->bus->methods->device_suspend != ((void*)0)) {
  usb_timeout_t temp;


  (udev->bus->methods->device_suspend) (udev);


  temp = usbd_get_dma_delay(udev);
  if (temp != 0)
   usb_pause_mtx(((void*)0), USB_MS_TO_TICKS(temp));

 }

 if (usb_device_20_compatible(udev)) {

  err = usbd_req_set_port_feature(udev->parent_hub,
      ((void*)0), udev->port_no, UHF_PORT_SUSPEND);
  if (err) {
   DPRINTFN(0, "Suspending port failed\n");
   return;
  }
 } else {

  err = usbd_req_set_port_link_state(udev->parent_hub,
      ((void*)0), udev->port_no, UPS_PORT_LS_U3);
  if (err) {
   DPRINTFN(0, "Suspending port failed\n");
   return;
  }
 }

 udev = udev->parent_hub;
 goto repeat;
}
