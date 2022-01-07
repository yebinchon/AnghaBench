
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct domainset {scalar_t__ ds_policy; int ds_mask; } ;
struct domainlist {int dummy; } ;
struct cpuset {int cs_flags; struct domainset* cs_domain; } ;
struct TYPE_3__ {int td_ucred; } ;


 int CPU_SET_ROOT ;
 int DOMAINSET_COPY (int *,int *) ;
 scalar_t__ DOMAINSET_POLICY_PREFER ;
 int EINVAL ;
 int EPERM ;
 int PRIV_SCHED_CPUSET ;
 struct cpuset* cpuset_getroot (struct cpuset*) ;
 int cpuset_lock ;
 int cpuset_testupdate_domain (struct cpuset*,struct domainset*,struct domainset*,int*,int ) ;
 int cpuset_update_domain (struct cpuset*,struct domainset*,struct domainset*,struct domainlist*) ;
 TYPE_1__* curthread ;
 int domainset_copy (struct domainset*,struct domainset*) ;
 struct domainset* domainset_create (struct domainset*) ;
 int domainset_freelist_add (struct domainlist*,int) ;
 int domainset_freelist_free (struct domainlist*) ;
 int domainset_freelist_init (struct domainlist*,int ) ;
 int domainset_notify () ;
 int domainset_valid (struct domainset*,struct domainset*) ;
 scalar_t__ jailed (int ) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int priv_check (TYPE_1__*,int ) ;

__attribute__((used)) static int
cpuset_modify_domain(struct cpuset *set, struct domainset *domain)
{
 struct domainlist domains;
 struct domainset temp;
 struct domainset *dset;
 struct cpuset *root;
 int ndomains, needed;
 int error;

 error = priv_check(curthread, PRIV_SCHED_CPUSET);
 if (error)
  return (error);






 if (jailed(curthread->td_ucred) &&
     set->cs_flags & CPU_SET_ROOT)
  return (EPERM);
 domainset_freelist_init(&domains, 0);
 domain = domainset_create(domain);
 ndomains = needed = 0;
 do {
  if (ndomains < needed) {
   domainset_freelist_add(&domains, needed - ndomains);
   ndomains = needed;
  }
  root = cpuset_getroot(set);
  mtx_lock_spin(&cpuset_lock);
  dset = root->cs_domain;



  if (!domainset_valid(dset, domain)) {
   error = EINVAL;
   goto out;
  }



  if (domain->ds_policy == DOMAINSET_POLICY_PREFER)
   DOMAINSET_COPY(&set->cs_domain->ds_mask,
       &domain->ds_mask);




  domainset_copy(domain, &temp);
  needed = 0;
  error = cpuset_testupdate_domain(set, &temp, set->cs_domain,
      &needed, 0);
  if (error)
   goto out;
 } while (ndomains < needed);
 dset = set->cs_domain;
 cpuset_update_domain(set, domain, dset, &domains);
out:
 mtx_unlock_spin(&cpuset_lock);
 domainset_freelist_free(&domains);
 if (error == 0)
  domainset_notify();

 return (error);
}
