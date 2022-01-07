
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* usb_error_t ;
typedef scalar_t__ uint8_t ;
struct usb_temp_setup {scalar_t__ size; void* err; int * buf; int self_powered; int usb_speed; } ;
struct usb_temp_device_desc {int dummy; } ;
struct TYPE_4__ {int self_powered; } ;
struct TYPE_3__ {struct usb_temp_setup* temp_setup; } ;
struct usb_device {int * usb_template_ptr; TYPE_2__ flags; int speed; TYPE_1__ scratch; } ;


 int DPRINTFN (int ,char*,scalar_t__,...) ;
 void* USB_ERR_INVAL ;
 void* USB_ERR_NOMEM ;
 int memset (struct usb_temp_setup*,int ,int) ;
 void* usb_hw_ep_resolve (struct usb_device*,void*) ;
 int usb_make_device_desc (struct usb_temp_setup*,struct usb_temp_device_desc const*) ;
 void* usb_temp_get_config_desc (struct usb_device*,int *,scalar_t__) ;
 void* usb_temp_get_device_desc (struct usb_device*) ;
 int usb_temp_unsetup (struct usb_device*) ;
 int * usbd_alloc_config_desc (struct usb_device*,scalar_t__) ;
 scalar_t__ usbd_ctrl_lock (struct usb_device*) ;
 int usbd_ctrl_unlock (struct usb_device*) ;
 int usbd_errstr (void*) ;

usb_error_t
usb_temp_setup(struct usb_device *udev,
    const struct usb_temp_device_desc *tdd)
{
 struct usb_temp_setup *uts;
 void *buf;
 usb_error_t error;
 uint8_t n;
 uint8_t do_unlock;


 if (tdd == ((void*)0))
  return (0);


 do_unlock = usbd_ctrl_lock(udev);

 uts = udev->scratch.temp_setup;

 memset(uts, 0, sizeof(*uts));

 uts->usb_speed = udev->speed;
 uts->self_powered = udev->flags.self_powered;



 usb_make_device_desc(uts, tdd);

 if (uts->err) {

  goto done;
 }

 if (uts->size == 0) {
  uts->err = USB_ERR_INVAL;
  goto done;
 }

 uts->buf = usbd_alloc_config_desc(udev, uts->size);





 if (uts->buf == ((void*)0)) {

  uts->err = USB_ERR_NOMEM;
  goto done;
 }


 uts->size = 0;

 usb_make_device_desc(uts, tdd);




 udev->usb_template_ptr = uts->buf;

 if (uts->err) {

  goto done;
 }



 buf = usb_temp_get_device_desc(udev);
 uts->err = usb_hw_ep_resolve(udev, buf);
 if (uts->err) {
  DPRINTFN(0, "Could not resolve endpoints for "
      "Device Descriptor, error = %s\n",
      usbd_errstr(uts->err));
  goto done;
 }
 for (n = 0;; n++) {

  buf = usb_temp_get_config_desc(udev, ((void*)0), n);
  if (buf == ((void*)0)) {
   break;
  }
  uts->err = usb_hw_ep_resolve(udev, buf);
  if (uts->err) {
   DPRINTFN(0, "Could not resolve endpoints for "
       "Config Descriptor %u, error = %s\n", n,
       usbd_errstr(uts->err));
   goto done;
  }
 }
done:
 error = uts->err;
 if (error)
  usb_temp_unsetup(udev);
 if (do_unlock)
  usbd_ctrl_unlock(udev);
 return (error);
}
