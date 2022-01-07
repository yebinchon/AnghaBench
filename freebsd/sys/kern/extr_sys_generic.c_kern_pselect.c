
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct thread {int td_flags; int td_pflags; int td_oldsigmask; } ;
typedef int sigset_t ;
typedef int fd_set ;


 int SIG_SETMASK ;
 int TDF_ASTPENDING ;
 int TDP_OLDMASK ;
 int kern_select (struct thread*,int,int *,int *,int *,struct timeval*,int) ;
 int kern_sigprocmask (struct thread*,int ,int *,int *,int ) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

int
kern_pselect(struct thread *td, int nd, fd_set *in, fd_set *ou, fd_set *ex,
    struct timeval *tvp, sigset_t *uset, int abi_nfdbits)
{
 int error;

 if (uset != ((void*)0)) {
  error = kern_sigprocmask(td, SIG_SETMASK, uset,
      &td->td_oldsigmask, 0);
  if (error != 0)
   return (error);
  td->td_pflags |= TDP_OLDMASK;





  thread_lock(td);
  td->td_flags |= TDF_ASTPENDING;
  thread_unlock(td);
 }
 error = kern_select(td, nd, in, ou, ex, tvp, abi_nfdbits);
 return (error);
}
