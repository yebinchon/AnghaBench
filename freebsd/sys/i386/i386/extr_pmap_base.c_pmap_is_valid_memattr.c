
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_memattr_t ;
typedef int pmap_t ;
typedef int boolean_t ;
struct TYPE_2__ {int (* pm_is_valid_memattr ) (int ,int ) ;} ;


 TYPE_1__* pmap_methods_ptr ;
 int stub1 (int ,int ) ;

boolean_t
pmap_is_valid_memattr(pmap_t pmap, vm_memattr_t mode)
{

 return (pmap_methods_ptr->pm_is_valid_memattr(pmap, mode));
}
