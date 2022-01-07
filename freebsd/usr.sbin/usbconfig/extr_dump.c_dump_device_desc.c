
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb20_device {int dummy; } ;
struct LIBUSB20_DEVICE_DESC_DECODED {int dummy; } ;


 int DUMP0 ;
 int LIBUSB20_DEVICE_DESC (int ,struct LIBUSB20_DEVICE_DESC_DECODED*) ;
 struct LIBUSB20_DEVICE_DESC_DECODED* libusb20_dev_get_device_desc (struct libusb20_device*) ;

void
dump_device_desc(struct libusb20_device *pdev)
{
 struct LIBUSB20_DEVICE_DESC_DECODED *ddesc;

 ddesc = libusb20_dev_get_device_desc(pdev);
 LIBUSB20_DEVICE_DESC(DUMP0, ddesc);
 return;
}
