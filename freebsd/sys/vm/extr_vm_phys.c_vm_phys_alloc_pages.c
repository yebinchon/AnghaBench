
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vm_page_t ;


 int VM_NFREELIST ;
 int * vm_phys_alloc_freelist_pages (int,int,int,int) ;

vm_page_t
vm_phys_alloc_pages(int domain, int pool, int order)
{
 vm_page_t m;
 int freelist;

 for (freelist = 0; freelist < VM_NFREELIST; freelist++) {
  m = vm_phys_alloc_freelist_pages(domain, freelist, pool, order);
  if (m != ((void*)0))
   return (m);
 }
 return (((void*)0));
}
