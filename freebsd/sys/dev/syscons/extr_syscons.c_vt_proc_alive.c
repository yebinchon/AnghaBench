
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct proc {int dummy; } ;
struct TYPE_4__ {int mode; } ;
struct TYPE_5__ {int pid; TYPE_1__ smode; struct proc* proc; } ;
typedef TYPE_2__ scr_stat ;


 int DPRINTF (int,char*) ;
 int FALSE ;
 int PROC_UNLOCK (struct proc*) ;
 int TRUE ;
 int VT_AUTO ;
 struct proc* pfind (int ) ;

__attribute__((used)) static int
vt_proc_alive(scr_stat *scp)
{
    struct proc *p;

    if (scp->proc) {
 if ((p = pfind(scp->pid)) != ((void*)0))
     PROC_UNLOCK(p);
 if (scp->proc == p)
     return TRUE;
 scp->proc = ((void*)0);
 scp->smode.mode = VT_AUTO;
 DPRINTF(5, ("vt controlling process %d died\n", scp->pid));
    }
    return FALSE;
}
