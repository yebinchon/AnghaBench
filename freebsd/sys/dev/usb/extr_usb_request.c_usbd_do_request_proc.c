
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_timeout_t ;
typedef scalar_t__ usb_error_t ;
typedef void uint8_t ;
typedef scalar_t__ uint16_t ;
struct usb_process {int up_mtx; } ;
struct usb_device_request {int bmRequestType; int wLength; } ;
struct usb_device {int dummy; } ;


 int UE_DIR_IN ;
 scalar_t__ UGETW (int ) ;
 scalar_t__ USB_ERR_IOERROR ;
 int memset (void*,int ,scalar_t__) ;
 scalar_t__ usb_proc_is_gone (struct usb_process*) ;
 scalar_t__ usbd_do_request_flags (struct usb_device*,int ,struct usb_device_request*,void*,scalar_t__,scalar_t__*,int ) ;

usb_error_t
usbd_do_request_proc(struct usb_device *udev, struct usb_process *pproc,
    struct usb_device_request *req, void *data, uint16_t flags,
    uint16_t *actlen, usb_timeout_t timeout)
{
 usb_error_t err;
 uint16_t len;


 len = UGETW(req->wLength);


 if (usb_proc_is_gone(pproc)) {
  err = USB_ERR_IOERROR;
  goto done;
 }


 err = usbd_do_request_flags(udev, pproc->up_mtx,
     req, data, flags, actlen, timeout);

done:


 if ((len != 0) && (req->bmRequestType & UE_DIR_IN)) {
  if (err)
   memset(data, 0, len);
  else if (actlen && *actlen != len)
   memset(((uint8_t *)data) + *actlen, 0, len - *actlen);
 }
 return (err);
}
