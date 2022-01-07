
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct thread {int td_cpuset; } ;
struct proc {int dummy; } ;
struct domainset {int ds_policy; int ds_mask; scalar_t__ ds_prefer; } ;
struct cpuset {int dummy; } ;
typedef int id_t ;
struct TYPE_10__ {int __bits; } ;
typedef TYPE_1__ domainset_t ;
typedef int domain ;
typedef scalar_t__ cpuwhich_t ;
typedef int cpulevel_t ;
 int DOMAINSET_COPY (TYPE_1__*,int *) ;
 int DOMAINSET_COUNT (int *) ;
 scalar_t__ DOMAINSET_FFS (int *) ;
 size_t DOMAINSET_MAXSIZE ;
 int DOMAINSET_POLICY_INVALID ;
 int DOMAINSET_POLICY_MAX ;
 int DOMAINSET_POLICY_PREFER ;
 int DOMAINSET_SUBSET (TYPE_1__*,int *) ;
 int ECAPMODE ;
 int EINVAL ;
 int ERANGE ;
 scalar_t__ IN_CAPABILITY_MODE (struct thread*) ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 size_t NBBY ;
 int PROC_UNLOCK (struct proc*) ;
 int _cpuset_setthread (int,int *,struct domainset*) ;
 TYPE_1__ all_domains ;
 int copyin (TYPE_1__ const*,TYPE_1__*,size_t) ;
 int cpuset_modify_domain (struct cpuset*,struct domainset*) ;
 struct cpuset* cpuset_ref (int ) ;
 struct cpuset* cpuset_refbase (struct cpuset*) ;
 struct cpuset* cpuset_refroot (struct cpuset*) ;
 int cpuset_rel (struct cpuset*) ;
 int cpuset_setproc (int,int *,int *,struct domainset*) ;
 int cpuset_which (scalar_t__,int,struct proc**,struct thread**,struct cpuset**) ;
 int domainset2 ;
 int domainset_copy (int *,struct domainset*) ;
 scalar_t__ domainset_empty_vm (struct domainset*) ;
 int free (TYPE_1__*,int ) ;
 TYPE_1__* malloc (size_t,int ,int) ;
 int memset (struct domainset*,int ,int) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

int
kern_cpuset_setdomain(struct thread *td, cpulevel_t level, cpuwhich_t which,
    id_t id, size_t domainsetsize, const domainset_t *maskp, int policy)
{
 struct cpuset *nset;
 struct cpuset *set;
 struct thread *ttd;
 struct proc *p;
 struct domainset domain;
 domainset_t *mask;
 int error;

 if (domainsetsize < sizeof(domainset_t) ||
     domainsetsize > DOMAINSET_MAXSIZE / NBBY)
  return (ERANGE);
 if (policy <= DOMAINSET_POLICY_INVALID ||
     policy > DOMAINSET_POLICY_MAX)
  return (EINVAL);

 if (IN_CAPABILITY_MODE(td)) {
  if (level != 136)
   return (ECAPMODE);
  if (which != 128 && which != 129)
   return (ECAPMODE);
  if (id != -1)
   return (ECAPMODE);
 }
 memset(&domain, 0, sizeof(domain));
 mask = malloc(domainsetsize, M_TEMP, M_WAITOK | M_ZERO);
 error = copyin(maskp, mask, domainsetsize);
 if (error)
  goto out;



 if (domainsetsize > sizeof(domainset_t)) {
  char *end;
  char *cp;

  end = cp = (char *)&mask->__bits;
  end += domainsetsize;
  cp += sizeof(domainset_t);
  while (cp != end)
   if (*cp++ != 0) {
    error = EINVAL;
    goto out;
   }

 }
 DOMAINSET_COPY(mask, &domain.ds_mask);
 domain.ds_policy = policy;




 if (!DOMAINSET_SUBSET(&all_domains, &domain.ds_mask)) {
  error = EINVAL;
  goto out;
 }


 if (policy == DOMAINSET_POLICY_PREFER) {

  if (DOMAINSET_COUNT(&domain.ds_mask) != 1) {
   error = EINVAL;
   goto out;
  }
  domain.ds_prefer = DOMAINSET_FFS(&domain.ds_mask) - 1;

  DOMAINSET_COPY(&all_domains, &domain.ds_mask);
 }





 if (domainset_empty_vm(&domain))
  domainset_copy(&domainset2, &domain);

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
  error = cpuset_modify_domain(nset, &domain);
  cpuset_rel(nset);
  cpuset_rel(set);
  break;
 case 136:
  switch (which) {
  case 128:
   error = _cpuset_setthread(id, ((void*)0), &domain);
   break;
  case 129:
   error = cpuset_setproc(id, ((void*)0), ((void*)0), &domain);
   break;
  case 135:
  case 130:
   error = cpuset_which(which, id, &p, &ttd, &set);
   if (error == 0) {
    error = cpuset_modify_domain(set, &domain);
    cpuset_rel(set);
   }
   break;
  case 132:
  case 133:
  case 131:
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
