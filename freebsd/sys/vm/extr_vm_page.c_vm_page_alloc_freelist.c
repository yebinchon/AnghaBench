
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vm_page_t ;
struct vm_domainset_iter {int dummy; } ;


 scalar_t__ vm_domainset_iter_page (struct vm_domainset_iter*,int *,int*) ;
 int vm_domainset_iter_page_init (struct vm_domainset_iter*,int *,int ,int*,int*) ;
 int * vm_page_alloc_freelist_domain (int,int,int) ;

vm_page_t
vm_page_alloc_freelist(int freelist, int req)
{
 struct vm_domainset_iter di;
 vm_page_t m;
 int domain;

 vm_domainset_iter_page_init(&di, ((void*)0), 0, &domain, &req);
 do {
  m = vm_page_alloc_freelist_domain(domain, freelist, req);
  if (m != ((void*)0))
   break;
 } while (vm_domainset_iter_page(&di, ((void*)0), &domain) == 0);

 return (m);
}
