
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int usb_handle_req_t ;
struct TYPE_4__ {scalar_t__ usb_mode; } ;
struct usb_device {TYPE_3__* bus; int * parent_hub; TYPE_1__ flags; } ;
struct TYPE_6__ {TYPE_2__* methods; } ;
struct TYPE_5__ {int * roothub_exec; } ;


 scalar_t__ USB_MODE_DEVICE ;
 int * usb_temp_get_desc_p ;

__attribute__((used)) static usb_handle_req_t *
usbd_get_hr_func(struct usb_device *udev)
{

 if (udev->flags.usb_mode == USB_MODE_DEVICE)
  return (usb_temp_get_desc_p);
 else if (udev->parent_hub == ((void*)0))
  return (udev->bus->methods->roothub_exec);
 else
  return (((void*)0));
}
