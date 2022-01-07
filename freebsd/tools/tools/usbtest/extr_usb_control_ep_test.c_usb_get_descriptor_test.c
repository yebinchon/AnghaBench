
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct libusb20_device {int dummy; } ;


 struct libusb20_device* find_usb_device (int ,int ) ;
 int libusb20_dev_free (struct libusb20_device*) ;
 int printf (char*) ;

void
usb_get_descriptor_test(uint16_t vid, uint16_t pid, uint32_t duration)
{
 struct libusb20_device *pdev;

 pdev = find_usb_device(vid, pid);
 if (pdev == ((void*)0)) {
  printf("USB device not found\n");
  return;
 }
 libusb20_dev_free(pdev);
}
