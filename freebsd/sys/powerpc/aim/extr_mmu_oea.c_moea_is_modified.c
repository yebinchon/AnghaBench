
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
 int PTE_CHG ;
 int VPO_UNMANAGED ;
 int moea_query_bit (TYPE_1__*,int ) ;
 int pmap_page_is_write_mapped (TYPE_1__*) ;
 int pvh_global_lock ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;

boolean_t
moea_is_modified(mmu_t mmu, vm_page_t m)
{
 boolean_t rv;

 KASSERT((m->oflags & VPO_UNMANAGED) == 0,
     ("moea_is_modified: page %p is not managed", m));




 if (!pmap_page_is_write_mapped(m))
  return (FALSE);

 rw_wlock(&pvh_global_lock);
 rv = moea_query_bit(m, PTE_CHG);
 rw_wunlock(&pvh_global_lock);
 return (rv);
}
