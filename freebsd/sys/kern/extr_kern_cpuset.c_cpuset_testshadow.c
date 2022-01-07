
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domainset {int dummy; } ;
struct cpuset {struct domainset* cs_domain; int cs_mask; } ;
typedef int cpuset_t ;


 int CPU_SUBSET (int *,int const*) ;
 int EINVAL ;
 struct cpuset* cpuset_getbase (struct cpuset*) ;
 int domainset_valid (struct domainset*,struct domainset const*) ;

__attribute__((used)) static int
cpuset_testshadow(struct cpuset *set, const cpuset_t *mask,
    const struct domainset *domain)
{
 struct cpuset *parent;
 struct domainset *dset;

 parent = cpuset_getbase(set);




 if (mask != ((void*)0) && !CPU_SUBSET(&parent->cs_mask, mask))
  return (EINVAL);





 dset = parent->cs_domain;
 if (domain != ((void*)0) && !domainset_valid(dset, domain))
  return (EINVAL);

 return (0);
}
