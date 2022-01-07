
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
struct spglist {int dummy; } ;
typedef TYPE_3__* pmap_t ;
struct TYPE_8__ {int resident_count; } ;
struct TYPE_10__ {TYPE_1__ pm_stats; scalar_t__* pm_pdir; } ;
struct TYPE_9__ {size_t pindex; } ;


 int MPASS (int) ;
 int TRUE ;
 TYPE_3__* kernel_pmap ;
 int pmap_add_delayed_free_list (TYPE_2__*,struct spglist*,int ) ;

__attribute__((used)) static void
_pmap_unwire_ptp(pmap_t pmap, vm_page_t m, struct spglist *free)
{




 pmap->pm_pdir[m->pindex] = 0;
 --pmap->pm_stats.resident_count;
 MPASS(pmap != kernel_pmap);
 pmap_add_delayed_free_list(m, free, TRUE);
}
