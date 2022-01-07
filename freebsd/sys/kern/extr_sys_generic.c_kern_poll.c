
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int time_t ;
struct timespec {scalar_t__ tv_sec; int tv_nsec; } ;
struct thread {scalar_t__* td_retval; int td_flags; int td_pflags; int td_oldsigmask; } ;
struct pollfd {int dummy; } ;
typedef int sigset_t ;
typedef int sbintime_t ;


 int EINTR ;
 int EINVAL ;
 int ERESTART ;
 int EWOULDBLOCK ;
 int FD_SETSIZE ;
 int INT32_MAX ;
 int M_TEMP ;
 int M_WAITOK ;
 int SIG_SETMASK ;
 int TDF_ASTPENDING ;
 int TDP_OLDMASK ;
 scalar_t__ TIMESEL (int*,int) ;
 int copyin (struct pollfd*,struct pollfd*,int) ;
 int free (struct pollfd*,int ) ;
 int kern_sigprocmask (struct thread*,int ,int *,int *,int ) ;
 struct pollfd* mallocarray (int,int,int ,int ) ;
 int maxfilesperproc ;
 int nitems (struct pollfd*) ;
 int pollout (struct thread*,struct pollfd*,struct pollfd*,int) ;
 int pollrescan (struct thread*) ;
 int pollscan (struct thread*,struct pollfd*,int) ;
 int seltdclear (struct thread*) ;
 int seltdinit (struct thread*) ;
 int seltdwait (struct thread*,int,int) ;
 int tc_precexp ;
 scalar_t__ tc_tick_sbt ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;
 int tstosbt (struct timespec) ;

int
kern_poll(struct thread *td, struct pollfd *ufds, u_int nfds,
    struct timespec *tsp, sigset_t *uset)
{
 struct pollfd *kfds;
 struct pollfd stackfds[32];
 sbintime_t sbt, precision, tmp;
 time_t over;
 struct timespec ts;
 int error;

 precision = 0;
 if (tsp != ((void*)0)) {
  if (tsp->tv_sec < 0)
   return (EINVAL);
  if (tsp->tv_nsec < 0 || tsp->tv_nsec >= 1000000000)
   return (EINVAL);
  if (tsp->tv_sec == 0 && tsp->tv_nsec == 0)
   sbt = 0;
  else {
   ts = *tsp;
   if (ts.tv_sec > INT32_MAX / 2) {
    over = ts.tv_sec - INT32_MAX / 2;
    ts.tv_sec -= over;
   } else
    over = 0;
   tmp = tstosbt(ts);
   precision = tmp;
   precision >>= tc_precexp;
   if (TIMESEL(&sbt, tmp))
    sbt += tc_tick_sbt;
   sbt += tmp;
  }
 } else
  sbt = -1;
 if (nfds > maxfilesperproc && nfds > FD_SETSIZE)
  return (EINVAL);
 if (nfds > nitems(stackfds))
  kfds = mallocarray(nfds, sizeof(*kfds), M_TEMP, M_WAITOK);
 else
  kfds = stackfds;
 error = copyin(ufds, kfds, nfds * sizeof(*kfds));
 if (error)
  goto done;

 if (uset != ((void*)0)) {
  error = kern_sigprocmask(td, SIG_SETMASK, uset,
      &td->td_oldsigmask, 0);
  if (error)
   goto done;
  td->td_pflags |= TDP_OLDMASK;





  thread_lock(td);
  td->td_flags |= TDF_ASTPENDING;
  thread_unlock(td);
 }

 seltdinit(td);

 for (;;) {
  error = pollscan(td, kfds, nfds);
  if (error || td->td_retval[0] != 0)
   break;
  error = seltdwait(td, sbt, precision);
  if (error)
   break;
  error = pollrescan(td);
  if (error || td->td_retval[0] != 0)
   break;
 }
 seltdclear(td);

done:

 if (error == ERESTART)
  error = EINTR;
 if (error == EWOULDBLOCK)
  error = 0;
 if (error == 0) {
  error = pollout(td, kfds, ufds, nfds);
  if (error)
   goto out;
 }
out:
 if (nfds > nitems(stackfds))
  free(kfds, M_TEMP);
 return (error);
}
