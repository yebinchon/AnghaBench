
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_descriptor {int dummy; } ;
struct usb_config_descriptor {int wTotalLength; } ;


 int UGETW (int ) ;

struct usb_descriptor *
usb_desc_foreach(struct usb_config_descriptor *cd,
    struct usb_descriptor *_desc)
{
 uint8_t *desc_next;
 uint8_t *start;
 uint8_t *end;
 uint8_t *desc;


 if (cd == ((void*)0))
  return (((void*)0));


 start = (uint8_t *)cd;
 end = start + UGETW(cd->wTotalLength);
 desc = (uint8_t *)_desc;


 if (desc == ((void*)0))
  desc = start;
 else
  desc = desc + desc[0];


 if ((desc < start) || (desc >= end))
  return (((void*)0));


 desc_next = desc + desc[0];
 if ((desc_next < start) || (desc_next > end))
  return (((void*)0));


 if (desc[0] < 3)
  return (((void*)0));


 return ((struct usb_descriptor *)desc);
}
