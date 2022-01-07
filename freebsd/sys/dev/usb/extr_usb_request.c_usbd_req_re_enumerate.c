
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
typedef void* uint8_t ;
struct TYPE_4__ {int bMaxPacketSize; } ;
struct TYPE_3__ {scalar_t__ usb_mode; } ;
struct usb_device {scalar_t__ speed; void* address; TYPE_2__ ddesc; int port_no; int hs_port_no; struct usb_device* parent_hs_hub; struct usb_device* parent_hub; TYPE_1__ flags; } ;
struct mtx {int dummy; } ;


 int DPRINTF (char*,...) ;
 int DPRINTFN (int ,char*,void*,int ) ;
 int UE_CONTROL ;
 scalar_t__ USB_ERR_INVAL ;
 int USB_MAX_IPACKET ;
 scalar_t__ USB_MODE_HOST ;
 int USB_SPEED_FULL ;
 scalar_t__ USB_SPEED_HIGH ;
 int USB_SPEED_LOW ;
 scalar_t__ USB_SPEED_SUPER ;
 void* USB_START_ADDR ;
 int USB_STATE_ADDRESSED ;
 int USB_STATE_POWERED ;
 int hz ;
 int uhub_count_active_host_ports (struct usb_device*,int ) ;
 int usb_pause_mtx (struct mtx*,int) ;
 int usb_set_device_state (struct usb_device*,int ) ;
 int usbd_errstr (scalar_t__) ;
 scalar_t__ usbd_req_clear_tt_buffer (struct usb_device*,int *,int ,void*,int ,int ) ;
 scalar_t__ usbd_req_reset_port (struct usb_device*,struct mtx*,int ) ;
 scalar_t__ usbd_req_reset_tt (struct usb_device*,int *,int ) ;
 scalar_t__ usbd_req_set_address (struct usb_device*,struct mtx*,void*) ;
 int usbd_req_warm_reset_port (struct usb_device*,struct mtx*,int ) ;
 scalar_t__ usbd_setup_device_desc (struct usb_device*,struct mtx*) ;

usb_error_t
usbd_req_re_enumerate(struct usb_device *udev, struct mtx *mtx)
{
 struct usb_device *parent_hub;
 usb_error_t err;
 uint8_t old_addr;
 uint8_t do_retry = 1;

 if (udev->flags.usb_mode != USB_MODE_HOST) {
  return (USB_ERR_INVAL);
 }
 old_addr = udev->address;
 parent_hub = udev->parent_hub;
 if (parent_hub == ((void*)0)) {
  return (USB_ERR_INVAL);
 }
retry:
 if (parent_hub->speed == USB_SPEED_SUPER)
  usbd_req_warm_reset_port(parent_hub, mtx, udev->port_no);


 err = usbd_req_reset_port(parent_hub, mtx, udev->port_no);
 if (err) {
  DPRINTFN(0, "addr=%d, port reset failed, %s\n",
      old_addr, usbd_errstr(err));
  goto done;
 }





 udev->address = USB_START_ADDR;


 udev->ddesc.bMaxPacketSize = USB_MAX_IPACKET;


 usb_set_device_state(udev, USB_STATE_POWERED);




 err = usbd_req_set_address(udev, mtx, old_addr);
 if (err) {

  DPRINTFN(0, "addr=%d, set address failed! (%s, ignored)\n",
      old_addr, usbd_errstr(err));
 }




 if (udev->address == USB_START_ADDR)
  udev->address = old_addr;


 err = usbd_setup_device_desc(udev, mtx);

done:
 if (err && do_retry) {

  usb_pause_mtx(mtx, hz / 2);

  do_retry = 0;

  goto retry;
 }

 if (udev->address == USB_START_ADDR)
  udev->address = old_addr;

 if (err == 0)
  usb_set_device_state(udev, USB_STATE_ADDRESSED);
 return (err);
}
