
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_paddr_t ;
struct TYPE_2__ {int (* pm_pg_frame ) (int ) ;} ;


 TYPE_1__* pmap_methods_ptr ;
 int stub1 (int ) ;

vm_paddr_t
pmap_pg_frame(vm_paddr_t pa)
{

 return (pmap_methods_ptr->pm_pg_frame(pa));
}
