
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int mmu_t ;
struct TYPE_4__ {int oflags; } ;


 int KASSERT (int,char*) ;
 int PTE_REF ;
 int VPO_UNMANAGED ;
 int moea_clear_bit (TYPE_1__*,int ) ;
 int pvh_global_lock ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;

int
moea_ts_referenced(mmu_t mmu, vm_page_t m)
{
 int count;

 KASSERT((m->oflags & VPO_UNMANAGED) == 0,
     ("moea_ts_referenced: page %p is not managed", m));
 rw_wlock(&pvh_global_lock);
 count = moea_clear_bit(m, PTE_REF);
 rw_wunlock(&pvh_global_lock);
 return (count);
}
