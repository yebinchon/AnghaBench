
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_device {int sr_sx; int enum_sx; } ;


 int Giant ;
 int mtx_lock (int *) ;
 int sx_xlock (int *) ;
 scalar_t__ sx_xlocked (int *) ;

uint8_t
usbd_enum_lock(struct usb_device *udev)
{
 if (sx_xlocked(&udev->enum_sx))
  return (0);

 sx_xlock(&udev->enum_sx);
 sx_xlock(&udev->sr_sx);





 mtx_lock(&Giant);
 return (1);
}
