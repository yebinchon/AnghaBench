
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ mode; int acqsig; } ;
struct vt_window {scalar_t__ vw_pid; int * vw_proc; TYPE_3__ vw_smode; int vw_flags; TYPE_2__* vw_terminal; TYPE_1__* vw_device; } ;
struct TYPE_5__ {int consdev; } ;
struct TYPE_4__ {struct vt_window** vd_windows; } ;


 int DPRINTF (int,char*,scalar_t__) ;
 int FALSE ;
 int PROC_LOCK (int *) ;
 int PROC_UNLOCK (int *) ;
 int TRUE ;
 size_t VT_CONSWINDOW ;
 scalar_t__ VT_PROCESS ;
 int VWF_SWWAIT_ACQ ;
 int cnavailable (int ,int) ;
 int kern_psignal (int *,int ) ;
 int vt_proc_alive (struct vt_window*) ;

__attribute__((used)) static int
signal_vt_acq(struct vt_window *vw)
{

 if (vw->vw_smode.mode != VT_PROCESS)
  return (FALSE);
 if (vw == vw->vw_device->vd_windows[VT_CONSWINDOW])
  cnavailable(vw->vw_terminal->consdev, FALSE);
 if (vw->vw_proc == ((void*)0) || vt_proc_alive(vw) == FALSE) {
  vw->vw_proc = ((void*)0);
  vw->vw_pid = 0;
  return (TRUE);
 }
 vw->vw_flags |= VWF_SWWAIT_ACQ;
 PROC_LOCK(vw->vw_proc);
 kern_psignal(vw->vw_proc, vw->vw_smode.acqsig);
 PROC_UNLOCK(vw->vw_proc);
 DPRINTF(1, "sending acqsig to %d\n", vw->vw_pid);
 return (TRUE);
}
