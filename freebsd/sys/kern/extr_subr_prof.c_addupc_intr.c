
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uintfptr_t ;
typedef scalar_t__ u_int ;
struct uprof {scalar_t__ pr_off; scalar_t__ pr_size; } ;
struct thread {int td_flags; int td_pflags; scalar_t__ td_profil_ticks; scalar_t__ td_profil_addr; TYPE_2__* td_proc; } ;
struct TYPE_5__ {TYPE_1__* p_stats; } ;
struct TYPE_4__ {struct uprof p_prof; } ;


 scalar_t__ PC_TO_INDEX (scalar_t__,struct uprof*) ;
 int PROC_PROFLOCK (TYPE_2__*) ;
 int PROC_PROFUNLOCK (TYPE_2__*) ;
 int TDF_ASTPENDING ;
 int TDP_OWEUPC ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

void
addupc_intr(struct thread *td, uintfptr_t pc, u_int ticks)
{
 struct uprof *prof;

 if (ticks == 0)
  return;
 prof = &td->td_proc->p_stats->p_prof;
 PROC_PROFLOCK(td->td_proc);
 if (pc < prof->pr_off || PC_TO_INDEX(pc, prof) >= prof->pr_size) {
  PROC_PROFUNLOCK(td->td_proc);
  return;
 }

 PROC_PROFUNLOCK(td->td_proc);
 td->td_profil_addr = pc;
 td->td_profil_ticks = ticks;
 td->td_pflags |= TDP_OWEUPC;
 thread_lock(td);
 td->td_flags |= TDF_ASTPENDING;
 thread_unlock(td);
}
