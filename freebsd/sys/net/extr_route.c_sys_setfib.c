
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_proc; } ;
struct setfib_args {scalar_t__ fibnum; } ;
struct TYPE_2__ {scalar_t__ p_fibnum; } ;


 int EINVAL ;
 scalar_t__ rt_numfibs ;

int
sys_setfib(struct thread *td, struct setfib_args *uap)
{
 if (uap->fibnum < 0 || uap->fibnum >= rt_numfibs)
  return EINVAL;
 td->td_proc->p_fibnum = uap->fibnum;
 return (0);
}
