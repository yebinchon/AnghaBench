
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct proc {int dummy; } ;
struct itimer {scalar_t__ it_overrun; scalar_t__ it_overrun_last; } ;
struct TYPE_3__ {scalar_t__ ksi_overrun; } ;
typedef TYPE_1__ ksiginfo_t ;


 int EINVAL ;
 int ITIMER_UNLOCK (struct itimer*) ;
 int MA_OWNED ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 struct itimer* itimer_find (struct proc*,int) ;

int
itimer_accept(struct proc *p, int timerid, ksiginfo_t *ksi)
{
 struct itimer *it;

 PROC_LOCK_ASSERT(p, MA_OWNED);
 it = itimer_find(p, timerid);
 if (it != ((void*)0)) {
  ksi->ksi_overrun = it->it_overrun;
  it->it_overrun_last = it->it_overrun;
  it->it_overrun = 0;
  ITIMER_UNLOCK(it);
  return (0);
 }
 return (EINVAL);
}
