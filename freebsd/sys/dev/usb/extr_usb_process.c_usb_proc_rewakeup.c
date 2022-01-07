
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_process {scalar_t__ up_msleep; int up_cv; int * up_mtx; scalar_t__ up_gone; } ;


 int MA_OWNED ;
 int USB_MTX_ASSERT (int *,int ) ;
 int cv_signal (int *) ;

void
usb_proc_rewakeup(struct usb_process *up)
{

 if (up->up_mtx == ((void*)0))
  return;

 if (up->up_gone)
  return;

 USB_MTX_ASSERT(up->up_mtx, MA_OWNED);

 if (up->up_msleep == 0) {

  cv_signal(&up->up_cv);
 }
}
