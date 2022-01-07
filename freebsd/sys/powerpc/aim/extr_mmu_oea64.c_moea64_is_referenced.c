
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int mmu_t ;
typedef int boolean_t ;
struct TYPE_4__ {int oflags; } ;


 int KASSERT (int,char*) ;
 int LPTE_REF ;
 int VPO_UNMANAGED ;
 int moea64_query_bit (int ,TYPE_1__*,int ) ;

boolean_t
moea64_is_referenced(mmu_t mmu, vm_page_t m)
{

 KASSERT((m->oflags & VPO_UNMANAGED) == 0,
     ("moea64_is_referenced: page %p is not managed", m));

 return (moea64_query_bit(mmu, m, LPTE_REF));
}
