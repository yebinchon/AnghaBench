
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vm_page_t ;
typedef int vm_memattr_t ;


 int pmap_page_set_memattr (int *,int ) ;
 int * vm_page_alloc (int *,int ,int) ;
 int vm_wait (int *) ;

__attribute__((used)) static vm_page_t
ttm_vm_page_alloc_any(int req, vm_memattr_t memattr)
{
 vm_page_t p;

 while (1) {
  p = vm_page_alloc(((void*)0), 0, req);
  if (p != ((void*)0))
   break;
  vm_wait(((void*)0));
 }
 pmap_page_set_memattr(p, memattr);
 return (p);
}
