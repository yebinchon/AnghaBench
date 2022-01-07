
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_process {int up_gone; int * up_mtx; int up_drain; scalar_t__ up_dsleep; int up_cv; scalar_t__ up_ptr; scalar_t__ up_csleep; scalar_t__ up_msleep; } ;


 int DPRINTF (char*) ;
 int Giant ;
 int MA_NOTOWNED ;
 int USB_MTX_ASSERT (int *,int ) ;
 int USB_MTX_LOCK (int *) ;
 int USB_MTX_UNLOCK (int *) ;
 int USB_THREAD_SUSPEND (scalar_t__) ;
 scalar_t__ cold ;
 int cv_broadcast (int *) ;
 int cv_signal (int *) ;
 int cv_wait (int *,int *) ;
 int printf (char*) ;

void
usb_proc_drain(struct usb_process *up)
{

 if (up->up_mtx == ((void*)0))
  return;

 if (up->up_mtx != &Giant)
  USB_MTX_ASSERT(up->up_mtx, MA_NOTOWNED);

 USB_MTX_LOCK(up->up_mtx);



 up->up_gone = 1;

 while (up->up_ptr) {



  if (up->up_msleep || up->up_csleep) {
   up->up_msleep = 0;
   up->up_csleep = 0;
   cv_signal(&up->up_cv);
  }


  if (cold) {
   USB_THREAD_SUSPEND(up->up_ptr);
   printf("WARNING: A USB process has "
       "been left suspended\n");
   break;
  }

  cv_wait(&up->up_cv, up->up_mtx);
 }


 if (up->up_dsleep) {
  up->up_dsleep = 0;
  cv_broadcast(&up->up_drain);
  DPRINTF("WARNING: Someone is waiting "
      "for USB process drain!\n");
 }
 USB_MTX_UNLOCK(up->up_mtx);
}
