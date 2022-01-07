
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* pm_invalidate_cache ) () ;} ;


 TYPE_1__* pmap_methods_ptr ;
 int stub1 () ;

void
pmap_invalidate_cache(void)
{

 pmap_methods_ptr->pm_invalidate_cache();
}
