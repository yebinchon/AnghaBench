
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {scalar_t__ refcount; int ref_cv; } ;


 int DPRINTF (char*,int) ;
 scalar_t__ USB_DEV_REF_MAX ;
 int cv_wait (int *,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int usb_ref_lock ;

__attribute__((used)) static void
usb_wait_pending_refs(struct usb_device *udev)
{
}
