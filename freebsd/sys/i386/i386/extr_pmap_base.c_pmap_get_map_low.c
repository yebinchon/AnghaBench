
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct TYPE_2__ {int (* pm_get_map_low ) () ;} ;


 TYPE_1__* pmap_methods_ptr ;
 int stub1 () ;

vm_offset_t
pmap_get_map_low(void)
{

 return (pmap_methods_ptr->pm_get_map_low());
}
