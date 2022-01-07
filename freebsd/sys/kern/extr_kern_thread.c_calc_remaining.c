
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_numthreads; int p_boundary_count; int p_suspcount; } ;


 int MA_OWNED ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PROC_SLOCK_ASSERT (struct proc*,int ) ;
 int SINGLE_ALLPROC ;
 int SINGLE_BOUNDARY ;
 int SINGLE_EXIT ;
 int SINGLE_NO_EXIT ;
 int panic (char*,int) ;

__attribute__((used)) static int
calc_remaining(struct proc *p, int mode)
{
 int remaining;

 PROC_LOCK_ASSERT(p, MA_OWNED);
 PROC_SLOCK_ASSERT(p, MA_OWNED);
 if (mode == SINGLE_EXIT)
  remaining = p->p_numthreads;
 else if (mode == SINGLE_BOUNDARY)
  remaining = p->p_numthreads - p->p_boundary_count;
 else if (mode == SINGLE_NO_EXIT || mode == SINGLE_ALLPROC)
  remaining = p->p_numthreads - p->p_suspcount;
 else
  panic("calc_remaining: wrong mode %d", mode);
 return (remaining);
}
