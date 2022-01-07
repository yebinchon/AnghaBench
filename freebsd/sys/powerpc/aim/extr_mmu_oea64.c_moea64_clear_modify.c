
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int mmu_t ;
struct TYPE_6__ {int oflags; } ;


 int KASSERT (int,char*) ;
 int LPTE_CHG ;
 int VPO_UNMANAGED ;
 int moea64_clear_bit (int ,TYPE_1__*,int ) ;
 int pmap_page_is_write_mapped (TYPE_1__*) ;
 int vm_page_assert_busied (TYPE_1__*) ;

void
moea64_clear_modify(mmu_t mmu, vm_page_t m)
{

 KASSERT((m->oflags & VPO_UNMANAGED) == 0,
     ("moea64_clear_modify: page %p is not managed", m));
 vm_page_assert_busied(m);

 if (!pmap_page_is_write_mapped(m))
  return;
 moea64_clear_bit(mmu, m, LPTE_CHG);
}
