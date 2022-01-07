
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; int relsig; } ;
struct vt_window {scalar_t__ vw_pid; int * vw_proc; TYPE_1__ vw_smode; int vw_flags; } ;


 int DPRINTF (int,char*,scalar_t__) ;
 int FALSE ;
 int PROC_LOCK (int *) ;
 int PROC_UNLOCK (int *) ;
 int TRUE ;
 scalar_t__ VT_PROCESS ;
 int VWF_SWWAIT_REL ;
 int kern_psignal (int *,int ) ;
 int vt_proc_alive (struct vt_window*) ;

__attribute__((used)) static int
signal_vt_rel(struct vt_window *vw)
{

 if (vw->vw_smode.mode != VT_PROCESS)
  return (FALSE);
 if (vw->vw_proc == ((void*)0) || vt_proc_alive(vw) == FALSE) {
  vw->vw_proc = ((void*)0);
  vw->vw_pid = 0;
  return (TRUE);
 }
 vw->vw_flags |= VWF_SWWAIT_REL;
 PROC_LOCK(vw->vw_proc);
 kern_psignal(vw->vw_proc, vw->vw_smode.relsig);
 PROC_UNLOCK(vw->vw_proc);
 DPRINTF(1, "sending relsig to %d\n", vw->vw_pid);
 return (TRUE);
}
