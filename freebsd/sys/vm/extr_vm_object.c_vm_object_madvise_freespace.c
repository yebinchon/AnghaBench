
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_size_t ;
typedef int vm_pindex_t ;
typedef TYPE_1__* vm_object_t ;
struct TYPE_4__ {scalar_t__ type; } ;


 int MADV_FREE ;
 scalar_t__ OBJT_SWAP ;
 int swap_pager_freespace (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void
vm_object_madvise_freespace(vm_object_t object, int advice, vm_pindex_t pindex,
    vm_size_t size)
{

 if (advice == MADV_FREE && object->type == OBJT_SWAP)
  swap_pager_freespace(object, pindex, size);
}
