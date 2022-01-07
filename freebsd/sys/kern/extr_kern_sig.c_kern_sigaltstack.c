
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ss_flags; scalar_t__ ss_size; } ;
struct thread {int td_pflags; TYPE_2__ td_sigstk; struct proc* td_proc; } ;
struct proc {TYPE_1__* p_sysent; } ;
typedef TYPE_2__ stack_t ;
struct TYPE_5__ {scalar_t__ sv_minsigstksz; } ;


 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 int SS_DISABLE ;
 int SS_ONSTACK ;
 int TDP_ALTSTACK ;
 int cpu_getstack (struct thread*) ;
 int sigonstack (int ) ;

int
kern_sigaltstack(struct thread *td, stack_t *ss, stack_t *oss)
{
 struct proc *p = td->td_proc;
 int oonstack;

 oonstack = sigonstack(cpu_getstack(td));

 if (oss != ((void*)0)) {
  *oss = td->td_sigstk;
  oss->ss_flags = (td->td_pflags & TDP_ALTSTACK)
      ? ((oonstack) ? SS_ONSTACK : 0) : SS_DISABLE;
 }

 if (ss != ((void*)0)) {
  if (oonstack)
   return (EPERM);
  if ((ss->ss_flags & ~SS_DISABLE) != 0)
   return (EINVAL);
  if (!(ss->ss_flags & SS_DISABLE)) {
   if (ss->ss_size < p->p_sysent->sv_minsigstksz)
    return (ENOMEM);

   td->td_sigstk = *ss;
   td->td_pflags |= TDP_ALTSTACK;
  } else {
   td->td_pflags &= ~TDP_ALTSTACK;
  }
 }
 return (0);
}
