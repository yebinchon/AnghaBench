
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef TYPE_1__* pmap_t ;
typedef int pd_entry_t ;
struct TYPE_3__ {int * pm_l1; } ;


 size_t pmap_l1_index (int ) ;

__attribute__((used)) static __inline pd_entry_t *
pmap_l1(pmap_t pmap, vm_offset_t va)
{

 return (&pmap->pm_l1[pmap_l1_index(va)]);
}
