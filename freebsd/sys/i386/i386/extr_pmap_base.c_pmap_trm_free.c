
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* pm_trm_free ) (void*,size_t) ;} ;


 TYPE_1__* pmap_methods_ptr ;
 int stub1 (void*,size_t) ;

void
pmap_trm_free(void *addr, size_t size)
{

 pmap_methods_ptr->pm_trm_free(addr, size);
}
