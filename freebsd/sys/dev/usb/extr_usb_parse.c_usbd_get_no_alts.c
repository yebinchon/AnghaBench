
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct usb_interface_descriptor {scalar_t__ bInterfaceNumber; } ;
struct usb_descriptor {scalar_t__ bDescriptorType; int bLength; } ;
struct usb_config_descriptor {int dummy; } ;


 scalar_t__ UDESC_INTERFACE ;
 struct usb_descriptor* usb_desc_foreach (struct usb_config_descriptor*,struct usb_descriptor*) ;

uint8_t
usbd_get_no_alts(struct usb_config_descriptor *cd,
    struct usb_interface_descriptor *id)
{
 struct usb_descriptor *desc;
 uint8_t n;
 uint8_t ifaceno;



 n = 0;



 ifaceno = id->bInterfaceNumber;



 desc = ((void*)0);
 while ((desc = usb_desc_foreach(cd, desc))) {
  if ((desc->bDescriptorType == UDESC_INTERFACE) &&
      (desc->bLength >= sizeof(*id))) {
   id = (struct usb_interface_descriptor *)desc;
   if (id->bInterfaceNumber == ifaceno) {
    n++;
    if (n == 0xFF)
     break;
   }
  }
 }
 return (n);
}
