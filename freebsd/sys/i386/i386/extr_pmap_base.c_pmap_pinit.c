
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pmap_t ;
struct TYPE_2__ {int (* pm_pinit ) (int ) ;} ;


 TYPE_1__* pmap_methods_ptr ;
 int stub1 (int ) ;

int
pmap_pinit(pmap_t pmap)
{

 return (pmap_methods_ptr->pm_pinit(pmap));
}
