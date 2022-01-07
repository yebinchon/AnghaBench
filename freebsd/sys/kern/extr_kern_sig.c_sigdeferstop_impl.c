
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_flags; } ;







 int SIGDEFERSTOP_VAL_NCHG ;
 int TDF_SBDRY ;
 int TDF_SEINTR ;
 int TDF_SERESTART ;
 struct thread* curthread ;
 int panic (char*,int) ;
 int sigdeferstop_curr_flags (int) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

int
sigdeferstop_impl(int mode)
{
 struct thread *td;
 int cflags, nflags;

 td = curthread;
 cflags = sigdeferstop_curr_flags(td->td_flags);
 switch (mode) {
 case 130:
  nflags = cflags;
  break;
 case 129:
  nflags = 0;
  break;
 case 128:
  nflags = (cflags | TDF_SBDRY) & ~(TDF_SEINTR | TDF_SERESTART);
  break;
 case 132:
  nflags = (cflags | TDF_SBDRY | TDF_SEINTR) & ~TDF_SERESTART;
  break;
 case 131:
  nflags = (cflags | TDF_SBDRY | TDF_SERESTART) & ~TDF_SEINTR;
  break;
 default:
  panic("sigdeferstop: invalid mode %x", mode);
  break;
 }
 if (cflags == nflags)
  return (SIGDEFERSTOP_VAL_NCHG);
 thread_lock(td);
 td->td_flags = (td->td_flags & ~cflags) | nflags;
 thread_unlock(td);
 return (cflags);
}
