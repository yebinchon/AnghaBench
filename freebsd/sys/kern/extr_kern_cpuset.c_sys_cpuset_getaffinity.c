
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cpuset_getaffinity_args {int mask; int cpusetsize; int id; int which; int level; } ;


 int kern_cpuset_getaffinity (struct thread*,int ,int ,int ,int ,int ) ;

int
sys_cpuset_getaffinity(struct thread *td, struct cpuset_getaffinity_args *uap)
{

 return (kern_cpuset_getaffinity(td, uap->level, uap->which,
     uap->id, uap->cpusetsize, uap->mask));
}
