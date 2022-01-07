
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_pindex_t ;
typedef int vm_page_t ;
typedef TYPE_1__* vm_object_t ;
struct TYPE_4__ {int rtree; } ;


 int VM_OBJECT_ASSERT_LOCKED (TYPE_1__*) ;
 int vm_radix_lookup (int *,int ) ;

vm_page_t
vm_page_lookup(vm_object_t object, vm_pindex_t pindex)
{

 VM_OBJECT_ASSERT_LOCKED(object);
 return (vm_radix_lookup(&object->rtree, pindex));
}
