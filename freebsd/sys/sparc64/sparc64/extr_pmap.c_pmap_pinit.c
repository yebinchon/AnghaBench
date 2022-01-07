
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef int vm_offset_t ;
struct tte {int dummy; } ;
typedef TYPE_3__* pmap_t ;
struct TYPE_9__ {int* pm_context; int pm_stats; struct tte* pm_tsb; int * pm_tsb_obj; int pm_active; } ;
struct TYPE_7__ {TYPE_3__* pmap; } ;
struct TYPE_8__ {TYPE_1__ md; } ;


 int CPU_ZERO (int *) ;
 int MAXCPU ;
 int OBJT_PHYS ;
 int TSB_BSIZE ;
 int TSB_PAGES ;
 int VM_ALLOC_NOBUSY ;
 int VM_ALLOC_NORMAL ;
 int VM_ALLOC_WIRED ;
 int VM_ALLOC_ZERO ;
 int VM_OBJECT_WLOCK (int *) ;
 int VM_OBJECT_WUNLOCK (int *) ;
 int bzero (int *,int) ;
 scalar_t__ kva_alloc (int ) ;
 int pmap_qenter (int ,TYPE_2__**,int) ;
 int * vm_object_allocate (int ,int) ;
 int vm_page_grab_pages (int *,int ,int,TYPE_2__**,int) ;

int
pmap_pinit(pmap_t pm)
{
 vm_page_t ma[TSB_PAGES];
 int i;




 if (pm->pm_tsb == ((void*)0)) {
  pm->pm_tsb = (struct tte *)kva_alloc(TSB_BSIZE);
  if (pm->pm_tsb == ((void*)0))
   return (0);
  }




 if (pm->pm_tsb_obj == ((void*)0))
  pm->pm_tsb_obj = vm_object_allocate(OBJT_PHYS, TSB_PAGES);

 for (i = 0; i < MAXCPU; i++)
  pm->pm_context[i] = -1;
 CPU_ZERO(&pm->pm_active);

 VM_OBJECT_WLOCK(pm->pm_tsb_obj);
 (void)vm_page_grab_pages(pm->pm_tsb_obj, 0, VM_ALLOC_NORMAL |
     VM_ALLOC_NOBUSY | VM_ALLOC_WIRED | VM_ALLOC_ZERO, ma, TSB_PAGES);
 VM_OBJECT_WUNLOCK(pm->pm_tsb_obj);
 for (i = 0; i < TSB_PAGES; i++)
  ma[i]->md.pmap = pm;
 pmap_qenter((vm_offset_t)pm->pm_tsb, ma, TSB_PAGES);

 bzero(&pm->pm_stats, sizeof(pm->pm_stats));
 return (1);
}
