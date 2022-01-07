
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct usb_hw_ep_profile {int dummy; } ;
struct usb_device {int dummy; } ;


 scalar_t__ ATMEGA_EP_MAX ;
 struct usb_hw_ep_profile* atmegadci_ep_profile ;

__attribute__((used)) static void
atmegadci_get_hw_ep_profile(struct usb_device *udev,
    const struct usb_hw_ep_profile **ppf, uint8_t ep_addr)
{
 if (ep_addr == 0)
  *ppf = atmegadci_ep_profile;
 else if (ep_addr < ATMEGA_EP_MAX)
  *ppf = atmegadci_ep_profile + 1;
 else
  *ppf = ((void*)0);
}
