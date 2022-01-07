
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_pindex_t ;
typedef int vm_page_t ;
typedef TYPE_1__* vm_object_t ;
struct TYPE_4__ {int rtree; } ;


 int vm_page_alloc_domain_after (TYPE_1__*,int ,int,int,int *) ;
 int * vm_radix_lookup_le (int *,int ) ;

vm_page_t
vm_page_alloc_domain(vm_object_t object, vm_pindex_t pindex, int domain,
    int req)
{

 return (vm_page_alloc_domain_after(object, pindex, domain, req,
     object != ((void*)0) ? vm_radix_lookup_le(&object->rtree, pindex) :
     ((void*)0)));
}
