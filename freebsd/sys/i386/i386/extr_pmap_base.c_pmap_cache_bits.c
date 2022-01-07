
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pmap_t ;
typedef int boolean_t ;
struct TYPE_2__ {int (* pm_cache_bits ) (int ,int,int ) ;} ;


 TYPE_1__* pmap_methods_ptr ;
 int stub1 (int ,int,int ) ;

int
pmap_cache_bits(pmap_t pmap, int mode, boolean_t is_pde)
{

 return (pmap_methods_ptr->pm_cache_bits(pmap, mode, is_pde));
}
