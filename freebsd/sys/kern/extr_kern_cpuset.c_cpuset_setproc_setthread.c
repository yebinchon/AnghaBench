
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct setlist {int dummy; } ;
struct domainset {int dummy; } ;
struct domainlist {int dummy; } ;
struct cpuset {scalar_t__ cs_id; } ;
typedef int cpuset_t ;


 scalar_t__ CPUSET_INVALID ;
 struct cpuset* cpuset_ref (struct cpuset*) ;
 int cpuset_setproc_setthread_mask (struct cpuset*,struct cpuset*,int *,struct domainset*) ;
 int cpuset_shadow (struct cpuset*,struct cpuset**,int *,struct domainset*,struct setlist*,struct domainlist*) ;

__attribute__((used)) static int
cpuset_setproc_setthread(struct cpuset *tdset, struct cpuset *set,
    struct cpuset **nsetp, struct setlist *freelist,
    struct domainlist *domainlist)
{
 struct domainset domain;
 cpuset_t mask;
 int error;





 if (tdset->cs_id != CPUSET_INVALID) {
  *nsetp = cpuset_ref(set);
  return (0);
 }
 error = cpuset_setproc_setthread_mask(tdset, set, &mask, &domain);
 if (error)
  return (error);

 return cpuset_shadow(tdset, nsetp, &mask, &domain, freelist,
     domainlist);
}
