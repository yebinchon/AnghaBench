
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int mmu_t ;
struct TYPE_4__ {int oflags; } ;


 int KASSERT (int,char*) ;
 int LPTE_REF ;
 int VPO_UNMANAGED ;
 int moea64_clear_bit (int ,TYPE_1__*,int ) ;

int
moea64_ts_referenced(mmu_t mmu, vm_page_t m)
{

 KASSERT((m->oflags & VPO_UNMANAGED) == 0,
     ("moea64_ts_referenced: page %p is not managed", m));
 return (moea64_clear_bit(mmu, m, LPTE_REF));
}
