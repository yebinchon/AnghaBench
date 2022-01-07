
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* (* pm_trm_alloc ) (size_t,int) ;} ;


 TYPE_1__* pmap_methods_ptr ;
 void* stub1 (size_t,int) ;

void *
pmap_trm_alloc(size_t size, int flags)
{

 return (pmap_methods_ptr->pm_trm_alloc(size, flags));
}
