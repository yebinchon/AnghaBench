
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct usb_device_descriptor {int bDeviceClass; int bDeviceSubClass; int bcdDevice; int bcdUSB; } ;
struct usb_device {int address; struct usb_device_descriptor ddesc; } ;


 int UGETW (int ) ;
 int snprintf (char*,int,char*,char*,char*,int,int,int,int,int,...) ;
 char* usb_get_manufacturer (struct usb_device*) ;
 char* usb_get_product (struct usb_device*) ;

void
usb_devinfo(struct usb_device *udev, char *dst_ptr, uint16_t dst_len)
{
 struct usb_device_descriptor *udd = &udev->ddesc;
 uint16_t bcdDevice;
 uint16_t bcdUSB;

 bcdUSB = UGETW(udd->bcdUSB);
 bcdDevice = UGETW(udd->bcdDevice);

 if (udd->bDeviceClass != 0xFF) {
  snprintf(dst_ptr, dst_len, "%s %s, class %d/%d, rev %x.%02x/"
      "%x.%02x, addr %d",
      usb_get_manufacturer(udev),
      usb_get_product(udev),
      udd->bDeviceClass, udd->bDeviceSubClass,
      (bcdUSB >> 8), bcdUSB & 0xFF,
      (bcdDevice >> 8), bcdDevice & 0xFF,
      udev->address);
 } else {
  snprintf(dst_ptr, dst_len, "%s %s, rev %x.%02x/"
      "%x.%02x, addr %d",
      usb_get_manufacturer(udev),
      usb_get_product(udev),
      (bcdUSB >> 8), bcdUSB & 0xFF,
      (bcdDevice >> 8), bcdDevice & 0xFF,
      udev->address);
 }
}
