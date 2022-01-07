
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_5__ {int flags; unsigned int pindex; } ;


 int PG_ZERO ;
 int VM_ALLOC_WIRED ;
 int VM_ALLOC_ZERO ;
 int VM_FREELIST_DIRECT ;
 int pmap_zero_page (TYPE_1__*) ;
 TYPE_1__* vm_page_alloc_freelist (int ,int) ;

__attribute__((used)) static vm_page_t
pmap_alloc_direct_page(unsigned int index, int req)
{
 vm_page_t m;

 m = vm_page_alloc_freelist(VM_FREELIST_DIRECT, req | VM_ALLOC_WIRED |
     VM_ALLOC_ZERO);
 if (m == ((void*)0))
  return (((void*)0));

 if ((m->flags & PG_ZERO) == 0)
  pmap_zero_page(m);

 m->pindex = index;
 return (m);
}
