
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domainset {int dummy; } ;
struct cpuset {struct domainset* cs_domain; int cs_mask; } ;
typedef int cpuset_t ;


 struct cpuset* cpuset_getbase (struct cpuset*) ;
 int cpuset_testshadow (struct cpuset*,int *,struct domainset*) ;

__attribute__((used)) static int
cpuset_setproc_test_maskthread(struct cpuset *tdset, cpuset_t *mask,
    struct domainset *domain)
{
 struct cpuset *parent;

 parent = cpuset_getbase(tdset);
 if (mask == ((void*)0))
  mask = &tdset->cs_mask;
 if (domain == ((void*)0))
  domain = tdset->cs_domain;
 return cpuset_testshadow(parent, mask, domain);
}
