
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ mode; int relsig; } ;
struct TYPE_5__ {int pid; int proc; TYPE_1__ smode; int status; } ;
typedef TYPE_2__ scr_stat ;


 int DPRINTF (int,char*) ;
 int FALSE ;
 int PROC_LOCK (int ) ;
 int PROC_UNLOCK (int ) ;
 int SWITCH_WAIT_REL ;
 int TRUE ;
 scalar_t__ VT_PROCESS ;
 int kern_psignal (int ,int ) ;

__attribute__((used)) static int
signal_vt_rel(scr_stat *scp)
{
    if (scp->smode.mode != VT_PROCESS)
 return FALSE;
    scp->status |= SWITCH_WAIT_REL;
    PROC_LOCK(scp->proc);
    kern_psignal(scp->proc, scp->smode.relsig);
    PROC_UNLOCK(scp->proc);
    DPRINTF(5, ("sending relsig to %d\n", scp->pid));
    return TRUE;
}
