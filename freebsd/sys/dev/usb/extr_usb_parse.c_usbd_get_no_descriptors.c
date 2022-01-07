
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct usb_descriptor {scalar_t__ bDescriptorType; } ;
struct usb_config_descriptor {int dummy; } ;


 struct usb_descriptor* usb_desc_foreach (struct usb_config_descriptor*,struct usb_descriptor*) ;

uint8_t
usbd_get_no_descriptors(struct usb_config_descriptor *cd, uint8_t type)
{
 struct usb_descriptor *desc = ((void*)0);
 uint8_t count = 0;

 while ((desc = usb_desc_foreach(cd, desc))) {
  if (desc->bDescriptorType == type) {
   count++;
   if (count == 0xFF)
    break;
  }
 }
 return (count);
}
