
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_process {scalar_t__ up_curtd; int up_dsleep; int up_mtx; int up_drain; scalar_t__ up_gone; int up_qhead; } ;
struct TYPE_2__ {int * tqe_prev; } ;
struct usb_proc_msg {TYPE_1__ pm_qentry; } ;


 int MA_OWNED ;
 int TAILQ_REMOVE (int *,struct usb_proc_msg*,int ) ;
 int USB_MTX_ASSERT (int ,int ) ;
 scalar_t__ curthread ;
 int cv_wait (int *,int ) ;
 int pm_qentry ;

void
usb_proc_mwait(struct usb_process *up, void *_pm0, void *_pm1)
{
 struct usb_proc_msg *pm0 = _pm0;
 struct usb_proc_msg *pm1 = _pm1;


 if (up->up_gone)
  return;

 USB_MTX_ASSERT(up->up_mtx, MA_OWNED);

 if (up->up_curtd == curthread) {

  if (pm0->pm_qentry.tqe_prev) {
   TAILQ_REMOVE(&up->up_qhead, pm0, pm_qentry);
   pm0->pm_qentry.tqe_prev = ((void*)0);
  }
  if (pm1->pm_qentry.tqe_prev) {
   TAILQ_REMOVE(&up->up_qhead, pm1, pm_qentry);
   pm1->pm_qentry.tqe_prev = ((void*)0);
  }
 } else
  while (pm0->pm_qentry.tqe_prev ||
      pm1->pm_qentry.tqe_prev) {

   if (up->up_gone)
    break;
   up->up_dsleep = 1;
   cv_wait(&up->up_drain, up->up_mtx);
  }
}
