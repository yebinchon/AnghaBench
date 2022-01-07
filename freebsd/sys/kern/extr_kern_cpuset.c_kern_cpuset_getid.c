
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmpid ;
struct thread {int td_cpuset; } ;
struct proc {int dummy; } ;
struct cpuset {int cs_id; } ;
typedef int id_t ;
typedef int cpuwhich_t ;
typedef int cpusetid_t ;
typedef int cpulevel_t ;
 int EINVAL ;
 int PROC_UNLOCK (struct proc*) ;
 int copyout (int *,int *,int) ;
 struct cpuset* cpuset_refbase (int ) ;
 struct cpuset* cpuset_refroot (struct cpuset*) ;
 int cpuset_rel (struct cpuset*) ;
 int cpuset_which (int,int ,struct proc**,struct thread**,struct cpuset**) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

int
kern_cpuset_getid(struct thread *td, cpulevel_t level, cpuwhich_t which,
    id_t id, cpusetid_t *setid)
{
 struct cpuset *nset;
 struct cpuset *set;
 struct thread *ttd;
 struct proc *p;
 cpusetid_t tmpid;
 int error;

 if (level == 134 && which != 133)
  return (EINVAL);
 error = cpuset_which(which, id, &p, &ttd, &set);
 if (error)
  return (error);
 switch (which) {
 case 128:
 case 129:
  thread_lock(ttd);
  set = cpuset_refbase(ttd->td_cpuset);
  thread_unlock(ttd);
  PROC_UNLOCK(p);
  break;
 case 133:
 case 130:
  break;
 case 131:
 case 132:
  return (EINVAL);
 }
 switch (level) {
 case 135:
  nset = cpuset_refroot(set);
  cpuset_rel(set);
  set = nset;
  break;
 case 136:
  break;
 case 134:
  break;
 }
 tmpid = set->cs_id;
 cpuset_rel(set);
 if (error == 0)
  error = copyout(&tmpid, setid, sizeof(tmpid));

 return (error);
}
