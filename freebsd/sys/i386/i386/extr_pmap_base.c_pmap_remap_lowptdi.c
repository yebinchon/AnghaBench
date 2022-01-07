
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* pm_remap_lowptdi ) (int) ;} ;


 TYPE_1__* pmap_methods_ptr ;
 int stub1 (int) ;

void
pmap_remap_lowptdi(bool enable)
{

 pmap_methods_ptr->pm_remap_lowptdi(enable);
}
