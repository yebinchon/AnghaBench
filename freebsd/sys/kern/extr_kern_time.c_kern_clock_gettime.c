
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct timespec {int tv_nsec; int tv_sec; } ;
struct thread {struct proc* td_proc; } ;
struct proc {int dummy; } ;
typedef int clockid_t ;
 int EINVAL ;
 int PROC_LOCK (struct proc*) ;
 int PROC_STATLOCK (struct proc*) ;
 int PROC_STATUNLOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int TIMEVAL_TO_TIMESPEC (struct timeval*,struct timespec*) ;
 int calcru (struct proc*,struct timeval*,struct timeval*) ;
 int get_cputime (struct thread*,int,struct timespec*) ;
 int get_process_cputime (struct proc*,struct timespec*) ;
 int get_thread_cputime (int *,struct timespec*) ;
 int getnanotime (struct timespec*) ;
 int getnanouptime (struct timespec*) ;
 int nanotime (struct timespec*) ;
 int nanouptime (struct timespec*) ;
 int time_second ;
 int timevaladd (struct timeval*,struct timeval*) ;

int
kern_clock_gettime(struct thread *td, clockid_t clock_id, struct timespec *ats)
{
 struct timeval sys, user;
 struct proc *p;

 p = td->td_proc;
 switch (clock_id) {
 case 136:
 case 134:
  nanotime(ats);
  break;
 case 135:
  getnanotime(ats);
  break;
 case 128:
  PROC_LOCK(p);
  PROC_STATLOCK(p);
  calcru(p, &user, &sys);
  PROC_STATUNLOCK(p);
  PROC_UNLOCK(p);
  TIMEVAL_TO_TIMESPEC(&user, ats);
  break;
 case 137:
  PROC_LOCK(p);
  PROC_STATLOCK(p);
  calcru(p, &user, &sys);
  PROC_STATUNLOCK(p);
  PROC_UNLOCK(p);
  timevaladd(&user, &sys);
  TIMEVAL_TO_TIMESPEC(&user, ats);
  break;
 case 141:
 case 139:
 case 131:
 case 129:
  nanouptime(ats);
  break;
 case 130:
 case 140:
  getnanouptime(ats);
  break;
 case 133:
  ats->tv_sec = time_second;
  ats->tv_nsec = 0;
  break;
 case 132:
  get_thread_cputime(((void*)0), ats);
  break;
 case 138:
  PROC_LOCK(p);
  get_process_cputime(p, ats);
  PROC_UNLOCK(p);
  break;
 default:
  if ((int)clock_id >= 0)
   return (EINVAL);
  return (get_cputime(td, clock_id, ats));
 }
 return (0);
}
