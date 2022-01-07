
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
typedef int vm_memattr_t ;
struct vm_domainset_iter {int dummy; } ;
struct domainset {int dummy; } ;


 scalar_t__ kmem_alloc_attr_domain (int,int ,int,int ,int ,int ) ;
 scalar_t__ vm_domainset_iter_policy (struct vm_domainset_iter*,int*) ;
 int vm_domainset_iter_policy_init (struct vm_domainset_iter*,struct domainset*,int*,int*) ;

vm_offset_t
kmem_alloc_attr_domainset(struct domainset *ds, vm_size_t size, int flags,
    vm_paddr_t low, vm_paddr_t high, vm_memattr_t memattr)
{
 struct vm_domainset_iter di;
 vm_offset_t addr;
 int domain;

 vm_domainset_iter_policy_init(&di, ds, &domain, &flags);
 do {
  addr = kmem_alloc_attr_domain(domain, size, flags, low, high,
      memattr);
  if (addr != 0)
   break;
 } while (vm_domainset_iter_policy(&di, &domain) == 0);

 return (addr);
}
