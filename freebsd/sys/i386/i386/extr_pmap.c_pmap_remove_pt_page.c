
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_page_t ;
typedef int vm_offset_t ;
typedef TYPE_1__* pmap_t ;
struct TYPE_4__ {int pm_root; } ;


 int MA_OWNED ;
 int PDRSHIFT ;
 int PMAP_LOCK_ASSERT (TYPE_1__*,int ) ;
 int vm_radix_remove (int *,int) ;

__attribute__((used)) static __inline vm_page_t
pmap_remove_pt_page(pmap_t pmap, vm_offset_t va)
{

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 return (vm_radix_remove(&pmap->pm_root, va >> PDRSHIFT));
}
