
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_pindex_t ;
typedef int * vm_page_t ;
typedef int vm_object_t ;
struct vm_domainset_iter {int dummy; } ;


 scalar_t__ vm_domainset_iter_page (struct vm_domainset_iter*,int ,int*) ;
 int vm_domainset_iter_page_init (struct vm_domainset_iter*,int ,int ,int*,int*) ;
 int * vm_page_alloc_domain_after (int ,int ,int,int,int *) ;

vm_page_t
vm_page_alloc_after(vm_object_t object, vm_pindex_t pindex,
    int req, vm_page_t mpred)
{
 struct vm_domainset_iter di;
 vm_page_t m;
 int domain;

 vm_domainset_iter_page_init(&di, object, pindex, &domain, &req);
 do {
  m = vm_page_alloc_domain_after(object, pindex, domain, req,
      mpred);
  if (m != ((void*)0))
   break;
 } while (vm_domainset_iter_page(&di, object, &domain) == 0);

 return (m);
}
