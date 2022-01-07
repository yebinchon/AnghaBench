
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int u_long ;
struct vm_domainset_iter {int dummy; } ;


 scalar_t__ vm_domainset_iter_page (struct vm_domainset_iter*,int *,int*) ;
 int vm_domainset_iter_page_init (struct vm_domainset_iter*,int *,int ,int*,int*) ;
 int vm_page_reclaim_contig_domain (int,int,int ,int ,int ,int ,int ) ;

bool
vm_page_reclaim_contig(int req, u_long npages, vm_paddr_t low, vm_paddr_t high,
    u_long alignment, vm_paddr_t boundary)
{
 struct vm_domainset_iter di;
 int domain;
 bool ret;

 vm_domainset_iter_page_init(&di, ((void*)0), 0, &domain, &req);
 do {
  ret = vm_page_reclaim_contig_domain(domain, req, npages, low,
      high, alignment, boundary);
  if (ret)
   break;
 } while (vm_domainset_iter_page(&di, ((void*)0), &domain) == 0);

 return (ret);
}
