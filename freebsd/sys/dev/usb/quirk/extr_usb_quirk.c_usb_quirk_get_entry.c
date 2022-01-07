
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct usb_quirk_entry {int vid; int pid; int lo_rev; int hi_rev; } ;


 int MA_OWNED ;
 int USB_DEV_QUIRKS_MAX ;
 int USB_MTX_ASSERT (int *,int ) ;
 int usb_quirk_mtx ;
 struct usb_quirk_entry* usb_quirks ;

__attribute__((used)) static struct usb_quirk_entry *
usb_quirk_get_entry(uint16_t vid, uint16_t pid,
    uint16_t lo_rev, uint16_t hi_rev, uint8_t do_alloc)
{
 uint16_t x;

 USB_MTX_ASSERT(&usb_quirk_mtx, MA_OWNED);

 if ((vid | pid | lo_rev | hi_rev) == 0) {

  return (usb_quirks + USB_DEV_QUIRKS_MAX - 1);
 }

 for (x = 0; x != USB_DEV_QUIRKS_MAX; x++) {

  if ((usb_quirks[x].vid != vid) ||
      (usb_quirks[x].pid != pid) ||
      (usb_quirks[x].lo_rev != lo_rev) ||
      (usb_quirks[x].hi_rev != hi_rev)) {
   continue;
  }
  return (usb_quirks + x);
 }

 if (do_alloc == 0) {

  return (((void*)0));
 }

 for (x = 0; x != USB_DEV_QUIRKS_MAX; x++) {

  if ((usb_quirks[x].vid |
      usb_quirks[x].pid |
      usb_quirks[x].lo_rev |
      usb_quirks[x].hi_rev) != 0) {
   continue;
  }
  usb_quirks[x].vid = vid;
  usb_quirks[x].pid = pid;
  usb_quirks[x].lo_rev = lo_rev;
  usb_quirks[x].hi_rev = hi_rev;

  return (usb_quirks + x);
 }


 return (((void*)0));
}
