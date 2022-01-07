
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cpuset_getdomain_args {int policy; int mask; int domainsetsize; int id; int which; int level; } ;


 int kern_cpuset_getdomain (struct thread*,int ,int ,int ,int ,int ,int ) ;

int
sys_cpuset_getdomain(struct thread *td, struct cpuset_getdomain_args *uap)
{

 return (kern_cpuset_getdomain(td, uap->level, uap->which,
     uap->id, uap->domainsetsize, uap->mask, uap->policy));
}
