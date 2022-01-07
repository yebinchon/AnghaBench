
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int sr_sx; } ;


 int Giant ;
 int mtx_lock (int *) ;
 int sx_xlock (int *) ;

void
usbd_sr_lock(struct usb_device *udev)
{
 sx_xlock(&udev->sr_sx);





 mtx_lock(&Giant);
}
