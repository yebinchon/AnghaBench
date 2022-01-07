
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_cowgen; int td_limit; int td_ucred; } ;


 int crhold (int ) ;
 int lim_hold (int ) ;

void
thread_cow_get(struct thread *newtd, struct thread *td)
{

 newtd->td_ucred = crhold(td->td_ucred);
 newtd->td_limit = lim_hold(td->td_limit);
 newtd->td_cowgen = td->td_cowgen;
}
