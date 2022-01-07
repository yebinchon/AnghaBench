
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint16_t ;
struct usb_device {int dummy; } ;


 int USB_ERR_INVAL ;

__attribute__((used)) static usb_error_t
usb_temp_setup_by_index_w(struct usb_device *udev, uint16_t index)
{
 return (USB_ERR_INVAL);
}
