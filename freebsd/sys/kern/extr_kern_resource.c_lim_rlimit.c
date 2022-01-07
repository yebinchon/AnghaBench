
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {TYPE_1__* td_limit; struct proc* td_proc; } ;
struct rlimit {int dummy; } ;
struct proc {TYPE_2__* p_sysent; } ;
struct TYPE_4__ {int (* sv_fixlimit ) (struct rlimit*,int) ;} ;
struct TYPE_3__ {struct rlimit* pl_rlimit; } ;


 int KASSERT (int,char*) ;
 int MPASS (int) ;
 int RLIM_NLIMITS ;
 struct thread* curthread ;
 int stub1 (struct rlimit*,int) ;

void
lim_rlimit(struct thread *td, int which, struct rlimit *rlp)
{
 struct proc *p = td->td_proc;

 MPASS(td == curthread);
 KASSERT(which >= 0 && which < RLIM_NLIMITS,
     ("request for invalid resource limit"));
 *rlp = td->td_limit->pl_rlimit[which];
 if (p->p_sysent->sv_fixlimit != ((void*)0))
  p->p_sysent->sv_fixlimit(rlp, which);
}
