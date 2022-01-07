
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hz ;
 int pause (char*,int ) ;
 int * usb_quirk_ioctl_p ;
 int usb_quirk_ioctl_w ;
 int * usb_test_quirk_p ;
 int usb_test_quirk_w ;

void
usb_quirk_unload(void *arg)
{


 usb_test_quirk_p = &usb_test_quirk_w;
 usb_quirk_ioctl_p = &usb_quirk_ioctl_w;





 pause("WAIT", hz);
}
