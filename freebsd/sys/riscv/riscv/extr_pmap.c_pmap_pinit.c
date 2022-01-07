
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int vm_paddr_t ;
typedef TYPE_2__* pmap_t ;
typedef int pd_entry_t ;
struct TYPE_10__ {int pm_l1; } ;
struct TYPE_9__ {int pm_satp; int pm_root; int * pm_l1; int pm_active; int pm_stats; } ;
struct TYPE_8__ {int flags; } ;


 int CPU_ZERO (int *) ;
 int LIST_INSERT_HEAD (int *,TYPE_2__*,int ) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PG_ZERO ;
 scalar_t__ PHYS_TO_DMAP (int) ;
 int SATP_MODE_SV39 ;
 int VM_ALLOC_NOOBJ ;
 int VM_ALLOC_NORMAL ;
 int VM_ALLOC_WIRED ;
 int VM_ALLOC_ZERO ;
 int VM_PAGE_TO_PHYS (TYPE_1__*) ;
 int allpmaps ;
 int allpmaps_lock ;
 int bzero (int *,int) ;
 TYPE_5__* kernel_pmap ;
 int memcpy (int *,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pagezero (int *) ;
 int pm_list ;
 TYPE_1__* vm_page_alloc (int *,int,int) ;
 int vm_radix_init (int *) ;
 int vm_wait (int *) ;

int
pmap_pinit(pmap_t pmap)
{
 vm_paddr_t l1phys;
 vm_page_t l1pt;




 while ((l1pt = vm_page_alloc(((void*)0), 0xdeadbeef, VM_ALLOC_NORMAL |
     VM_ALLOC_NOOBJ | VM_ALLOC_WIRED | VM_ALLOC_ZERO)) == ((void*)0))
  vm_wait(((void*)0));

 l1phys = VM_PAGE_TO_PHYS(l1pt);
 pmap->pm_l1 = (pd_entry_t *)PHYS_TO_DMAP(l1phys);
 pmap->pm_satp = SATP_MODE_SV39 | (l1phys >> PAGE_SHIFT);

 if ((l1pt->flags & PG_ZERO) == 0)
  pagezero(pmap->pm_l1);

 bzero(&pmap->pm_stats, sizeof(pmap->pm_stats));

 CPU_ZERO(&pmap->pm_active);


 memcpy(pmap->pm_l1, kernel_pmap->pm_l1, PAGE_SIZE);


 mtx_lock(&allpmaps_lock);
 LIST_INSERT_HEAD(&allpmaps, pmap, pm_list);
 mtx_unlock(&allpmaps_lock);

 vm_radix_init(&pmap->pm_root);

 return (1);
}
