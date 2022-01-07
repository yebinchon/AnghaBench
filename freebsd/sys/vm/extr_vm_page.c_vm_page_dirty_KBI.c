
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_4__ {int dirty; } ;


 int KASSERT (int ,char*) ;
 int VM_PAGE_BITS_ALL ;
 int vm_page_all_valid (TYPE_1__*) ;

void
vm_page_dirty_KBI(vm_page_t m)
{


 KASSERT(vm_page_all_valid(m), ("vm_page_dirty: page is invalid!"));
 m->dirty = VM_PAGE_BITS_ALL;
}
