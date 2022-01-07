
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_hw_ep_profile {int dummy; } ;
struct usb_device {int dummy; } ;


 struct usb_hw_ep_profile* saf1761_otg_ep_profile ;

__attribute__((used)) static void
saf1761_otg_get_hw_ep_profile(struct usb_device *udev,
    const struct usb_hw_ep_profile **ppf, uint8_t ep_addr)
{
 if (ep_addr == 0) {
  *ppf = saf1761_otg_ep_profile + 0;
 } else if (ep_addr < 8) {
  *ppf = saf1761_otg_ep_profile + 1;
 } else {
  *ppf = ((void*)0);
 }
}
