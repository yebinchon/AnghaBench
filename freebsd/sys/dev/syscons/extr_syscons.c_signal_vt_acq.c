
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ mode; int acqsig; } ;
struct TYPE_7__ {int pid; int proc; TYPE_2__ smode; int status; TYPE_1__* sc; } ;
typedef TYPE_3__ scr_stat ;
struct TYPE_5__ {scalar_t__ unit; } ;


 int DPRINTF (int,char*) ;
 int FALSE ;
 int PROC_LOCK (int ) ;
 int PROC_UNLOCK (int ) ;
 int SWITCH_WAIT_ACQ ;
 int TRUE ;
 scalar_t__ VT_PROCESS ;
 int cnavailable (int ,int) ;
 int kern_psignal (int ,int ) ;
 scalar_t__ sc_console_unit ;
 int sc_consptr ;

__attribute__((used)) static int
signal_vt_acq(scr_stat *scp)
{
    if (scp->smode.mode != VT_PROCESS)
 return FALSE;
    if (scp->sc->unit == sc_console_unit)
 cnavailable(sc_consptr, FALSE);
    scp->status |= SWITCH_WAIT_ACQ;
    PROC_LOCK(scp->proc);
    kern_psignal(scp->proc, scp->smode.acqsig);
    PROC_UNLOCK(scp->proc);
    DPRINTF(5, ("sending acqsig to %d\n", scp->pid));
    return TRUE;
}
