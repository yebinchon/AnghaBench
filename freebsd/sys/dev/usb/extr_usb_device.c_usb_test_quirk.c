
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t usb_test_quirk_p ;
typedef size_t uint8_t ;
typedef scalar_t__ uint16_t ;
struct usb_attach_arg {int info; TYPE_1__* device; } ;
struct TYPE_2__ {scalar_t__* autoQuirk; } ;


 scalar_t__ UQ_NONE ;
 size_t USB_MAX_AUTO_QUIRK ;

uint8_t
usb_test_quirk(const struct usb_attach_arg *uaa, uint16_t quirk)
{
 uint8_t found;
 uint8_t x;

 if (quirk == UQ_NONE)
  return (0);



 for (x = 0; x != USB_MAX_AUTO_QUIRK; x++) {
  if (uaa->device->autoQuirk[x] == quirk)
   return (1);
 }



 found = (usb_test_quirk_p) (&uaa->info, quirk);

 return (found);
}
