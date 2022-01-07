
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int vm_memattr_t ;
typedef enum ttm_caching_state { ____Placeholder_ttm_caching_state } ttm_caching_state ;
struct TYPE_5__ {int flags; int oflags; } ;


 int PG_FICTITIOUS ;
 int TTM_PAGE_FLAG_DMA32 ;
 int TTM_PAGE_FLAG_ZERO_ALLOC ;
 int VM_ALLOC_NOOBJ ;
 int VM_ALLOC_NORMAL ;
 int VM_ALLOC_WIRED ;
 int VM_ALLOC_ZERO ;
 int VPO_UNMANAGED ;
 int ttm_caching_state_to_vm (int) ;
 TYPE_1__* ttm_vm_page_alloc_any (int,int ) ;
 TYPE_1__* ttm_vm_page_alloc_dma32 (int,int ) ;

__attribute__((used)) static vm_page_t
ttm_vm_page_alloc(int flags, enum ttm_caching_state cstate)
{
 vm_page_t p;
 vm_memattr_t memattr;
 int req;

 memattr = ttm_caching_state_to_vm(cstate);
 req = VM_ALLOC_NORMAL | VM_ALLOC_WIRED | VM_ALLOC_NOOBJ;
 if ((flags & TTM_PAGE_FLAG_ZERO_ALLOC) != 0)
  req |= VM_ALLOC_ZERO;

 if ((flags & TTM_PAGE_FLAG_DMA32) != 0)
  p = ttm_vm_page_alloc_dma32(req, memattr);
 else
  p = ttm_vm_page_alloc_any(req, memattr);

 if (p != ((void*)0)) {
  p->oflags &= ~VPO_UNMANAGED;
  p->flags |= PG_FICTITIOUS;
 }
 return (p);
}
