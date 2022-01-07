
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_pindex_t ;
typedef int vm_object_t ;


 int swp_pager_meta_free (int ,int ,int ) ;

void
swap_pager_freespace(vm_object_t object, vm_pindex_t start, vm_size_t size)
{

 swp_pager_meta_free(object, start, size);
}
