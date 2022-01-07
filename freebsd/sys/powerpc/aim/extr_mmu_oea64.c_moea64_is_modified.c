
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int mmu_t ;
typedef int boolean_t ;
struct TYPE_5__ {int oflags; } ;


 int FALSE ;
 int KASSERT (int,char*) ;
 int LPTE_CHG ;
 int VPO_UNMANAGED ;
 int moea64_query_bit (int ,TYPE_1__*,int ) ;
 int pmap_page_is_write_mapped (TYPE_1__*) ;

boolean_t
moea64_is_modified(mmu_t mmu, vm_page_t m)
{

 KASSERT((m->oflags & VPO_UNMANAGED) == 0,
     ("moea64_is_modified: page %p is not managed", m));




 if (!pmap_page_is_write_mapped(m))
  return (FALSE);

 return (moea64_query_bit(mmu, m, LPTE_CHG));
}
