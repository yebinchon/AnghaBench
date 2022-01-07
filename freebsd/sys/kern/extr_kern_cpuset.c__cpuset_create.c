
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domainset {int dummy; } ;
struct cpuset {scalar_t__ cs_id; int cs_children; int cs_parent; int cs_mask; struct domainset* cs_domain; scalar_t__ cs_flags; int cs_ref; } ;
typedef scalar_t__ cpusetid_t ;
typedef int cpuset_t ;


 scalar_t__ CPUSET_INVALID ;
 int CPU_AND (int *,int *) ;
 int CPU_COPY (int const*,int *) ;
 int CPU_OVERLAP (int *,int const*) ;
 int EDEADLK ;
 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (int *,struct cpuset*,int ) ;
 int cpuset_ids ;
 int cpuset_lock ;
 int cpuset_ref (struct cpuset*) ;
 int cs_link ;
 int cs_siblings ;
 int domainset_valid (struct domainset*,struct domainset*) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int refcount_init (int *,int) ;

__attribute__((used)) static int
_cpuset_create(struct cpuset *set, struct cpuset *parent,
    const cpuset_t *mask, struct domainset *domain, cpusetid_t id)
{

 if (domain == ((void*)0))
  domain = parent->cs_domain;
 if (mask == ((void*)0))
  mask = &parent->cs_mask;
 if (!CPU_OVERLAP(&parent->cs_mask, mask))
  return (EDEADLK);

 if (!domainset_valid(parent->cs_domain, domain))
  return (EDEADLK);
 CPU_COPY(mask, &set->cs_mask);
 LIST_INIT(&set->cs_children);
 refcount_init(&set->cs_ref, 1);
 set->cs_flags = 0;
 mtx_lock_spin(&cpuset_lock);
 set->cs_domain = domain;
 CPU_AND(&set->cs_mask, &parent->cs_mask);
 set->cs_id = id;
 set->cs_parent = cpuset_ref(parent);
 LIST_INSERT_HEAD(&parent->cs_children, set, cs_siblings);
 if (set->cs_id != CPUSET_INVALID)
  LIST_INSERT_HEAD(&cpuset_ids, set, cs_link);
 mtx_unlock_spin(&cpuset_lock);

 return (0);
}
