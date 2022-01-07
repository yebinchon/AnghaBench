
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rlimit {int dummy; } ;
struct proc {TYPE_2__* p_sysent; TYPE_1__* p_limit; } ;
struct TYPE_4__ {int (* sv_fixlimit ) (struct rlimit*,int) ;} ;
struct TYPE_3__ {struct rlimit* pl_rlimit; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int RLIM_NLIMITS ;
 int stub1 (struct rlimit*,int) ;

void
lim_rlimit_proc(struct proc *p, int which, struct rlimit *rlp)
{

 PROC_LOCK_ASSERT(p, MA_OWNED);
 KASSERT(which >= 0 && which < RLIM_NLIMITS,
     ("request for invalid resource limit"));
 *rlp = p->p_limit->pl_rlimit[which];
 if (p->p_sysent->sv_fixlimit != ((void*)0))
  p->p_sysent->sv_fixlimit(rlp, which);
}
