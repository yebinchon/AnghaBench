
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_pindex_t ;
typedef int vm_object_t ;


 int swp_pager_meta_transfer (int ,int *,int ,int ) ;

__attribute__((used)) static void
swp_pager_meta_free(vm_object_t object, vm_pindex_t pindex, vm_pindex_t count)
{
 swp_pager_meta_transfer(object, ((void*)0), pindex, count);
}
