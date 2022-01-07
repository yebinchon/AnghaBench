
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_page_t ;
typedef int pmap_t ;
typedef int boolean_t ;
struct TYPE_2__ {int (* pm_page_exists_quick ) (int ,int ) ;} ;


 TYPE_1__* pmap_methods_ptr ;
 int stub1 (int ,int ) ;

boolean_t
pmap_page_exists_quick(pmap_t pmap, vm_page_t m)
{

 return (pmap_methods_ptr->pm_page_exists_quick(pmap, m));
}
