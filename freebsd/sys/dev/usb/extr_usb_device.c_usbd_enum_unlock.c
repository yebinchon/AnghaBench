
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int sr_sx; int enum_sx; } ;


 int Giant ;
 int mtx_unlock (int *) ;
 int sx_xunlock (int *) ;

void
usbd_enum_unlock(struct usb_device *udev)
{
 mtx_unlock(&Giant);
 sx_xunlock(&udev->enum_sx);
 sx_xunlock(&udev->sr_sx);
}
