
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_domainset_iter {int dummy; } ;
struct malloc_type {int dummy; } ;
struct domainset {int dummy; } ;


 void* malloc_domain (size_t,struct malloc_type*,int,int) ;
 scalar_t__ vm_domainset_iter_policy (struct vm_domainset_iter*,int*) ;
 int vm_domainset_iter_policy_init (struct vm_domainset_iter*,struct domainset*,int*,int*) ;

void *
malloc_domainset(size_t size, struct malloc_type *mtp, struct domainset *ds,
    int flags)
{
 struct vm_domainset_iter di;
 void *ret;
 int domain;

 vm_domainset_iter_policy_init(&di, ds, &domain, &flags);
 do {
  ret = malloc_domain(size, mtp, domain, flags);
  if (ret != ((void*)0))
   break;
 } while (vm_domainset_iter_policy(&di, &domain) == 0);

 return (ret);
}
