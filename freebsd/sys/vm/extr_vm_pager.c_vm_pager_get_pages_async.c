
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vm_page_t ;
typedef TYPE_1__* vm_object_t ;
typedef int pgo_getpages_iodone_t ;
struct TYPE_7__ {int (* pgo_getpages_async ) (TYPE_1__*,int *,int,int*,int*,int ,void*) ;} ;
struct TYPE_6__ {size_t type; } ;


 TYPE_5__** pagertab ;
 int stub1 (TYPE_1__*,int *,int,int*,int*,int ,void*) ;
 int vm_pager_assert_in (TYPE_1__*,int *,int) ;

int
vm_pager_get_pages_async(vm_object_t object, vm_page_t *m, int count,
    int *rbehind, int *rahead, pgo_getpages_iodone_t iodone, void *arg)
{

 vm_pager_assert_in(object, m, count);

 return ((*pagertab[object->type]->pgo_getpages_async)(object, m,
     count, rbehind, rahead, iodone, arg));
}
