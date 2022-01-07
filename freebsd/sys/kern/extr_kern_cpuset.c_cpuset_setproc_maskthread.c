
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct setlist {int dummy; } ;
struct domainset {int dummy; } ;
struct domainlist {int dummy; } ;
struct cpuset {struct domainset* cs_domain; int cs_mask; } ;
typedef int cpuset_t ;


 struct cpuset* cpuset_getbase (struct cpuset*) ;
 int cpuset_shadow (struct cpuset*,struct cpuset**,int *,struct domainset*,struct setlist*,struct domainlist*) ;

__attribute__((used)) static int
cpuset_setproc_maskthread(struct cpuset *tdset, cpuset_t *mask,
    struct domainset *domain, struct cpuset **nsetp,
    struct setlist *freelist, struct domainlist *domainlist)
{
 struct cpuset *parent;

 parent = cpuset_getbase(tdset);
 if (mask == ((void*)0))
  mask = &tdset->cs_mask;
 if (domain == ((void*)0))
  domain = tdset->cs_domain;
 return cpuset_shadow(parent, nsetp, mask, domain, freelist,
     domainlist);
}
