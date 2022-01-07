
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct thread {int td_cpuset; } ;
struct proc {int dummy; } ;
struct cpuset {int dummy; } ;
typedef int id_t ;
typedef scalar_t__ cpuwhich_t ;
struct TYPE_11__ {int __bits; } ;
typedef TYPE_1__ cpuset_t ;
typedef int cpulevel_t ;





 size_t CPU_MAXSIZE ;
 int ECAPMODE ;
 int EINVAL ;
 int ERANGE ;
 scalar_t__ IN_CAPABILITY_MODE (struct thread*) ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 size_t NBBY ;
 int PROC_UNLOCK (struct proc*) ;
 int copyin (TYPE_1__ const*,TYPE_1__*,size_t) ;
 int cpuset_modify (struct cpuset*,TYPE_1__*) ;
 struct cpuset* cpuset_ref (int ) ;
 struct cpuset* cpuset_refbase (struct cpuset*) ;
 struct cpuset* cpuset_refroot (struct cpuset*) ;
 int cpuset_rel (struct cpuset*) ;
 int cpuset_setproc (int,int *,TYPE_1__*,int *) ;
 int cpuset_setthread (int,TYPE_1__*) ;
 int cpuset_which (scalar_t__,int,struct proc**,struct thread**,struct cpuset**) ;
 int free (TYPE_1__*,int ) ;
 int intr_setaffinity (int,scalar_t__,TYPE_1__*) ;
 TYPE_1__* malloc (size_t,int ,int) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

int
kern_cpuset_setaffinity(struct thread *td, cpulevel_t level, cpuwhich_t which,
    id_t id, size_t cpusetsize, const cpuset_t *maskp)
{
 struct cpuset *nset;
 struct cpuset *set;
 struct thread *ttd;
 struct proc *p;
 cpuset_t *mask;
 int error;

 if (cpusetsize < sizeof(cpuset_t) || cpusetsize > CPU_MAXSIZE / NBBY)
  return (ERANGE);

 if (IN_CAPABILITY_MODE(td)) {
  if (level != 136)
   return (ECAPMODE);
  if (which != 128 && which != 129)
   return (ECAPMODE);
  if (id != -1)
   return (ECAPMODE);
 }
 mask = malloc(cpusetsize, M_TEMP, M_WAITOK | M_ZERO);
 error = copyin(maskp, mask, cpusetsize);
 if (error)
  goto out;



 if (cpusetsize > sizeof(cpuset_t)) {
  char *end;
  char *cp;

  end = cp = (char *)&mask->__bits;
  end += cpusetsize;
  cp += sizeof(cpuset_t);
  while (cp != end)
   if (*cp++ != 0) {
    error = EINVAL;
    goto out;
   }

 }
 switch (level) {
 case 137:
 case 138:
  error = cpuset_which(which, id, &p, &ttd, &set);
  if (error)
   break;
  switch (which) {
  case 128:
  case 129:
   thread_lock(ttd);
   set = cpuset_ref(ttd->td_cpuset);
   thread_unlock(ttd);
   PROC_UNLOCK(p);
   break;
  case 135:
  case 130:
   break;
  case 132:
  case 133:
  case 131:
  case 134:
   error = EINVAL;
   goto out;
  }
  if (level == 137)
   nset = cpuset_refroot(set);
  else
   nset = cpuset_refbase(set);
  error = cpuset_modify(nset, mask);
  cpuset_rel(nset);
  cpuset_rel(set);
  break;
 case 136:
  switch (which) {
  case 128:
   error = cpuset_setthread(id, mask);
   break;
  case 129:
   error = cpuset_setproc(id, ((void*)0), mask, ((void*)0));
   break;
  case 135:
  case 130:
   error = cpuset_which(which, id, &p, &ttd, &set);
   if (error == 0) {
    error = cpuset_modify(set, mask);
    cpuset_rel(set);
   }
   break;
  case 132:
  case 133:
  case 131:
   error = intr_setaffinity(id, which, mask);
   break;
  default:
   error = EINVAL;
   break;
  }
  break;
 default:
  error = EINVAL;
  break;
 }
out:
 free(mask, M_TEMP);
 return (error);
}
