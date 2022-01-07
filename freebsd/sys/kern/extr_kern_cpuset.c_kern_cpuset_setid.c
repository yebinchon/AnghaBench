
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cpuset {int dummy; } ;
typedef int id_t ;
typedef scalar_t__ cpuwhich_t ;
typedef int cpusetid_t ;


 scalar_t__ CPU_WHICH_PID ;
 int EINVAL ;
 int ESRCH ;
 struct cpuset* cpuset_lookup (int ,struct thread*) ;
 int cpuset_rel (struct cpuset*) ;
 int cpuset_setproc (int ,struct cpuset*,int *,int *) ;

int
kern_cpuset_setid(struct thread *td, cpuwhich_t which,
    id_t id, cpusetid_t setid)
{
 struct cpuset *set;
 int error;




 if (which != CPU_WHICH_PID)
  return (EINVAL);
 set = cpuset_lookup(setid, td);
 if (set == ((void*)0))
  return (ESRCH);
 error = cpuset_setproc(id, set, ((void*)0), ((void*)0));
 cpuset_rel(set);
 return (error);
}
