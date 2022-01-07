
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_6__ {int valid; } ;


 int VM_PAGE_BITS_ALL ;
 int vm_page_assert_busied (TYPE_1__*) ;
 int vm_page_bits_set (TYPE_1__*,int *,int ) ;
 scalar_t__ vm_page_xbusied (TYPE_1__*) ;

void
vm_page_valid(vm_page_t m)
{

 vm_page_assert_busied(m);
 if (vm_page_xbusied(m))
  m->valid = VM_PAGE_BITS_ALL;
 else
  vm_page_bits_set(m, &m->valid, VM_PAGE_BITS_ALL);
}
