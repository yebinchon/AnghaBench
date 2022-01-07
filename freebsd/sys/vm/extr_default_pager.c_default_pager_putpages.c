
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_page_t ;
typedef int vm_object_t ;
struct TYPE_2__ {int (* pgo_putpages ) (int ,int *,int,int,int*) ;} ;


 int stub1 (int ,int *,int,int,int*) ;
 TYPE_1__ swappagerops ;

__attribute__((used)) static void
default_pager_putpages(vm_object_t object, vm_page_t *m, int count,
    int flags, int *rtvals)
{


 swappagerops.pgo_putpages(object, m, count, flags, rtvals);
}
