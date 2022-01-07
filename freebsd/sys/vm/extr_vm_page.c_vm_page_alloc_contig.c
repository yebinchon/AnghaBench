
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_pindex_t ;
typedef int * vm_page_t ;
typedef int vm_paddr_t ;
typedef int vm_object_t ;
typedef int vm_memattr_t ;
typedef int u_long ;
struct vm_domainset_iter {int dummy; } ;


 scalar_t__ vm_domainset_iter_page (struct vm_domainset_iter*,int ,int*) ;
 int vm_domainset_iter_page_init (struct vm_domainset_iter*,int ,int ,int*,int*) ;
 int * vm_page_alloc_contig_domain (int ,int ,int,int,int ,int ,int ,int ,int ,int ) ;

vm_page_t
vm_page_alloc_contig(vm_object_t object, vm_pindex_t pindex, int req,
    u_long npages, vm_paddr_t low, vm_paddr_t high, u_long alignment,
    vm_paddr_t boundary, vm_memattr_t memattr)
{
 struct vm_domainset_iter di;
 vm_page_t m;
 int domain;

 vm_domainset_iter_page_init(&di, object, pindex, &domain, &req);
 do {
  m = vm_page_alloc_contig_domain(object, pindex, domain, req,
      npages, low, high, alignment, boundary, memattr);
  if (m != ((void*)0))
   break;
 } while (vm_domainset_iter_page(&di, object, &domain) == 0);

 return (m);
}
