
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_process {int up_msleep; int up_mtx; int up_cv; int * up_ptr; int up_drain; scalar_t__ up_dsleep; int up_qhead; scalar_t__ up_gone; struct thread* up_curtd; int up_prio; } ;
struct TYPE_2__ {int * tqe_prev; } ;
struct usb_proc_msg {TYPE_1__ pm_qentry; int (* pm_callback ) (struct usb_proc_msg*) ;} ;
struct thread {int dummy; } ;


 int DPRINTF (char*,struct usb_proc_msg*,...) ;
 struct usb_proc_msg* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct usb_proc_msg*,int ) ;
 int USB_MTX_LOCK (int ) ;
 int USB_MTX_UNLOCK (int ) ;
 int USB_THREAD_EXIT (int ) ;
 int USB_THREAD_SUSPEND_CHECK () ;
 struct thread* curthread ;
 int cv_broadcast (int *) ;
 int cv_signal (int *) ;
 int cv_wait (int *,int ) ;
 int pm_qentry ;
 int sched_prio (struct thread*,int ) ;
 int stub1 (struct usb_proc_msg*) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;
 scalar_t__ usb_pcount ;
 int * usbproc ;

__attribute__((used)) static void
usb_process(void *arg)
{
 struct usb_process *up = arg;
 struct usb_proc_msg *pm;
 struct thread *td;


 USB_THREAD_SUSPEND_CHECK();


 td = curthread;
 thread_lock(td);
 sched_prio(td, up->up_prio);
 thread_unlock(td);

 USB_MTX_LOCK(up->up_mtx);

 up->up_curtd = td;

 while (1) {

  if (up->up_gone)
   break;
  pm = TAILQ_FIRST(&up->up_qhead);

  if (pm) {
   DPRINTF("Message pm=%p, cb=%p (enter)\n",
       pm, pm->pm_callback);

   (pm->pm_callback) (pm);

   if (pm == TAILQ_FIRST(&up->up_qhead)) {

    TAILQ_REMOVE(&up->up_qhead, pm, pm_qentry);
    pm->pm_qentry.tqe_prev = ((void*)0);
   }
   DPRINTF("Message pm=%p (leave)\n", pm);

   continue;
  }

  if (up->up_dsleep) {
   up->up_dsleep = 0;
   cv_broadcast(&up->up_drain);
  }
  up->up_msleep = 1;
  cv_wait(&up->up_cv, up->up_mtx);
 }

 up->up_ptr = ((void*)0);
 cv_signal(&up->up_cv);
 USB_MTX_UNLOCK(up->up_mtx);






 USB_THREAD_EXIT(0);
}
