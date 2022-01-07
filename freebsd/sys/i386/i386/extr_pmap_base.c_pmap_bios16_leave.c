
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* pm_bios16_leave ) (void*) ;} ;


 TYPE_1__* pmap_methods_ptr ;
 int stub1 (void*) ;

void
pmap_bios16_leave(void *handle)
{

 pmap_methods_ptr->pm_bios16_leave(handle);
}
