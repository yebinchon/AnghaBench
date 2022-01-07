
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef TYPE_3__* pv_entry_t ;
struct TYPE_10__ {int pv_va; } ;
struct TYPE_8__ {int pv_list; } ;
struct TYPE_9__ {TYPE_1__ md; } ;


 int PAGE_SIZE ;
 TYPE_3__* TAILQ_FIRST (int *) ;
 TYPE_3__* TAILQ_NEXT (TYPE_3__*,int ) ;
 int mips_dcache_wbinv_range_index (int ,int ) ;
 int pv_list ;

void
pmap_flush_pvcache(vm_page_t m)
{
 pv_entry_t pv;

 if (m != ((void*)0)) {
  for (pv = TAILQ_FIRST(&m->md.pv_list); pv;
      pv = TAILQ_NEXT(pv, pv_list)) {
   mips_dcache_wbinv_range_index(pv->pv_va, PAGE_SIZE);
  }
 }
}
