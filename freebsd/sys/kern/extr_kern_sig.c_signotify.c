
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_flags; int td_proc; } ;


 int MA_OWNED ;
 int PROC_LOCK_ASSERT (int ,int ) ;
 scalar_t__ SIGPENDING (struct thread*) ;
 int TDF_ASTPENDING ;
 int TDF_NEEDSIGCHK ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

void
signotify(struct thread *td)
{

 PROC_LOCK_ASSERT(td->td_proc, MA_OWNED);

 if (SIGPENDING(td)) {
  thread_lock(td);
  td->td_flags |= TDF_NEEDSIGCHK | TDF_ASTPENDING;
  thread_unlock(td);
 }
}
