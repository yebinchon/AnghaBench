
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dr_policy; } ;
struct thread {TYPE_1__ td_domain; struct cpuset* td_cpuset; } ;
struct cpuset {int cs_domain; } ;


 int sched_affinity (struct thread*) ;

__attribute__((used)) static struct cpuset *
cpuset_update_thread(struct thread *td, struct cpuset *nset)
{
 struct cpuset *tdset;

 tdset = td->td_cpuset;
 td->td_cpuset = nset;
 td->td_domain.dr_policy = nset->cs_domain;
 sched_affinity(td);

 return (tdset);
}
