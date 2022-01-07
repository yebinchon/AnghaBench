
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_flags; } ;


 int KASSERT (int,char*) ;
 int SIGDEFERSTOP_VAL_NCHG ;
 int TDF_SBDRY ;
 int TDF_SEINTR ;
 int TDF_SERESTART ;
 struct thread* curthread ;
 int sigdeferstop_curr_flags (int) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

void
sigallowstop_impl(int prev)
{
 struct thread *td;
 int cflags;

 KASSERT(prev != SIGDEFERSTOP_VAL_NCHG, ("failed sigallowstop"));
 KASSERT((prev & ~(TDF_SBDRY | TDF_SEINTR | TDF_SERESTART)) == 0,
     ("sigallowstop: incorrect previous mode %x", prev));
 td = curthread;
 cflags = sigdeferstop_curr_flags(td->td_flags);
 if (cflags != prev) {
  thread_lock(td);
  td->td_flags = (td->td_flags & ~cflags) | prev;
  thread_unlock(td);
 }
}
