
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_endpoint_descriptor {int dummy; } ;
struct usb_descriptor {scalar_t__ bDescriptorType; int bLength; } ;
struct usb_config_descriptor {int dummy; } ;


 scalar_t__ UDESC_ENDPOINT ;
 scalar_t__ UDESC_INTERFACE ;
 struct usb_descriptor* usb_desc_foreach (struct usb_config_descriptor*,struct usb_descriptor*) ;

struct usb_endpoint_descriptor *
usb_edesc_foreach(struct usb_config_descriptor *cd,
    struct usb_endpoint_descriptor *ped)
{
 struct usb_descriptor *desc;

 desc = ((struct usb_descriptor *)ped);

 while ((desc = usb_desc_foreach(cd, desc))) {
  if (desc->bDescriptorType == UDESC_INTERFACE) {
   break;
  }
  if (desc->bDescriptorType == UDESC_ENDPOINT) {
   if (desc->bLength < sizeof(*ped)) {

    break;
   }
   return ((struct usb_endpoint_descriptor *)desc);
  }
 }
 return (((void*)0));
}
