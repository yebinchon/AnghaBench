
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_process {int * up_mtx; int up_drain; int up_cv; } ;


 int cv_destroy (int *) ;
 int usb_proc_drain (struct usb_process*) ;

void
usb_proc_free(struct usb_process *up)
{

 if (up->up_mtx == ((void*)0))
  return;

 usb_proc_drain(up);

 cv_destroy(&up->up_cv);
 cv_destroy(&up->up_drain);


 up->up_mtx = ((void*)0);
}
