
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface_descriptor {int dummy; } ;
typedef void usb_hid_descriptor ;
struct usb_descriptor {scalar_t__ bDescriptorType; scalar_t__ bLength; } ;
struct usb_config_descriptor {int dummy; } ;


 scalar_t__ UDESC_HID ;
 scalar_t__ UDESC_INTERFACE ;
 scalar_t__ USB_HID_DESCRIPTOR_SIZE (int ) ;
 struct usb_descriptor* usb_desc_foreach (struct usb_config_descriptor*,struct usb_descriptor*) ;

struct usb_hid_descriptor *
hid_get_descriptor_from_usb(struct usb_config_descriptor *cd,
    struct usb_interface_descriptor *id)
{
 struct usb_descriptor *desc = (void *)id;

 if (desc == ((void*)0)) {
  return (((void*)0));
 }
 while ((desc = usb_desc_foreach(cd, desc))) {
  if ((desc->bDescriptorType == UDESC_HID) &&
      (desc->bLength >= USB_HID_DESCRIPTOR_SIZE(0))) {
   return (void *)desc;
  }
  if (desc->bDescriptorType == UDESC_INTERFACE) {
   break;
  }
 }
 return (((void*)0));
}
