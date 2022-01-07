
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domainset {int dummy; } ;
struct cpuset {scalar_t__ cs_id; } ;
typedef int cpuset_t ;


 scalar_t__ CPUSET_INVALID ;
 int cpuset_setproc_setthread_mask (struct cpuset*,struct cpuset*,int *,struct domainset*) ;

__attribute__((used)) static int
cpuset_setproc_test_setthread(struct cpuset *tdset, struct cpuset *set)
{
 struct domainset domain;
 cpuset_t mask;

 if (tdset->cs_id != CPUSET_INVALID)
  return (0);
 return cpuset_setproc_setthread_mask(tdset, set, &mask, &domain);
}
