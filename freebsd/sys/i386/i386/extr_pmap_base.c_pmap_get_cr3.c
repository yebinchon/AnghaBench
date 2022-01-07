
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
typedef int pmap_t ;
struct TYPE_2__ {int (* pm_get_cr3 ) (int ) ;} ;


 TYPE_1__* pmap_methods_ptr ;
 int stub1 (int ) ;

u_int
pmap_get_cr3(pmap_t pmap)
{

 return (pmap_methods_ptr->pm_get_cr3(pmap));
}
