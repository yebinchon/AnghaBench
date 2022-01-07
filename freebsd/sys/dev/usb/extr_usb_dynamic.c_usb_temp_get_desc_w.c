
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint16_t ;
struct usb_device_request {int dummy; } ;
struct usb_device {int dummy; } ;


 int USB_ERR_STALLED ;

__attribute__((used)) static usb_error_t
usb_temp_get_desc_w(struct usb_device *udev, struct usb_device_request *req, const void **pPtr, uint16_t *pLength)
{

 return (USB_ERR_STALLED);
}
