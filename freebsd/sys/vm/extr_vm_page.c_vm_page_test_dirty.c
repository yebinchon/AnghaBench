
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_6__ {scalar_t__ dirty; } ;


 scalar_t__ VM_PAGE_BITS_ALL ;
 scalar_t__ pmap_is_modified (TYPE_1__*) ;
 int vm_page_assert_busied (TYPE_1__*) ;
 int vm_page_dirty (TYPE_1__*) ;

void
vm_page_test_dirty(vm_page_t m)
{

 vm_page_assert_busied(m);
 if (m->dirty != VM_PAGE_BITS_ALL && pmap_is_modified(m))
  vm_page_dirty(m);
}
