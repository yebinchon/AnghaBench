
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_page_t ;
typedef int vm_offset_t ;
typedef TYPE_2__* pmap_t ;
struct TYPE_5__ {scalar_t__ resident_count; } ;
struct TYPE_6__ {scalar_t__ pm_l1; int pm_active; TYPE_1__ pm_stats; } ;


 int CPU_EMPTY (int *) ;
 int DMAP_TO_PHYS (int ) ;
 int KASSERT (int,char*) ;
 int LIST_REMOVE (TYPE_2__*,int ) ;
 int PHYS_TO_VM_PAGE (int ) ;
 int allpmaps_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pm_list ;
 int vm_page_free (int ) ;
 int vm_page_unwire_noq (int ) ;

void
pmap_release(pmap_t pmap)
{
 vm_page_t m;

 KASSERT(pmap->pm_stats.resident_count == 0,
     ("pmap_release: pmap resident count %ld != 0",
     pmap->pm_stats.resident_count));
 KASSERT(CPU_EMPTY(&pmap->pm_active),
     ("releasing active pmap %p", pmap));

 mtx_lock(&allpmaps_lock);
 LIST_REMOVE(pmap, pm_list);
 mtx_unlock(&allpmaps_lock);

 m = PHYS_TO_VM_PAGE(DMAP_TO_PHYS((vm_offset_t)pmap->pm_l1));
 vm_page_unwire_noq(m);
 vm_page_free(m);
}
