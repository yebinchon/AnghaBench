
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* (* pm_bios16_enter ) () ;} ;


 TYPE_1__* pmap_methods_ptr ;
 void* stub1 () ;

void *
pmap_bios16_enter(void)
{

 return (pmap_methods_ptr->pm_bios16_enter());
}
