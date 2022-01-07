
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct usb_device {int dummy; } ;


 int EIO ;
 scalar_t__ TYPE_PL2303 ;
 int UPLCOM_SET_REQUEST ;
 int UT_READ_VENDOR_DEVICE ;
 int UT_WRITE_VENDOR_DEVICE ;
 int uplcom_pl2303_do (struct usb_device*,int ,int ,int,int,int) ;

__attribute__((used)) static int
uplcom_pl2303_init(struct usb_device *udev, uint8_t chiptype)
{
 int err;

 if (uplcom_pl2303_do(udev, UT_READ_VENDOR_DEVICE, UPLCOM_SET_REQUEST, 0x8484, 0, 1)
     || uplcom_pl2303_do(udev, UT_WRITE_VENDOR_DEVICE, UPLCOM_SET_REQUEST, 0x0404, 0, 0)
     || uplcom_pl2303_do(udev, UT_READ_VENDOR_DEVICE, UPLCOM_SET_REQUEST, 0x8484, 0, 1)
     || uplcom_pl2303_do(udev, UT_READ_VENDOR_DEVICE, UPLCOM_SET_REQUEST, 0x8383, 0, 1)
     || uplcom_pl2303_do(udev, UT_READ_VENDOR_DEVICE, UPLCOM_SET_REQUEST, 0x8484, 0, 1)
     || uplcom_pl2303_do(udev, UT_WRITE_VENDOR_DEVICE, UPLCOM_SET_REQUEST, 0x0404, 1, 0)
     || uplcom_pl2303_do(udev, UT_READ_VENDOR_DEVICE, UPLCOM_SET_REQUEST, 0x8484, 0, 1)
     || uplcom_pl2303_do(udev, UT_READ_VENDOR_DEVICE, UPLCOM_SET_REQUEST, 0x8383, 0, 1)
     || uplcom_pl2303_do(udev, UT_WRITE_VENDOR_DEVICE, UPLCOM_SET_REQUEST, 0, 1, 0)
     || uplcom_pl2303_do(udev, UT_WRITE_VENDOR_DEVICE, UPLCOM_SET_REQUEST, 1, 0, 0))
  return (EIO);

 if (chiptype != TYPE_PL2303)
  err = uplcom_pl2303_do(udev, UT_WRITE_VENDOR_DEVICE, UPLCOM_SET_REQUEST, 2, 0x44, 0);
 else
  err = uplcom_pl2303_do(udev, UT_WRITE_VENDOR_DEVICE, UPLCOM_SET_REQUEST, 2, 0x24, 0);
 if (err)
  return (EIO);

 return (0);
}
