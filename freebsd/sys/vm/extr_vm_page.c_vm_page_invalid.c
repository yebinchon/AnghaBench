
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_7__ {scalar_t__ valid; int object; } ;


 int MPASS (int) ;
 int VM_OBJECT_ASSERT_LOCKED (int ) ;
 int VM_PAGE_BITS_ALL ;
 int pmap_page_is_mapped (TYPE_1__*) ;
 int vm_page_assert_busied (TYPE_1__*) ;
 int vm_page_bits_clear (TYPE_1__*,scalar_t__*,int ) ;
 scalar_t__ vm_page_xbusied (TYPE_1__*) ;

void
vm_page_invalid(vm_page_t m)
{

 vm_page_assert_busied(m);
 VM_OBJECT_ASSERT_LOCKED(m->object);
 MPASS(!pmap_page_is_mapped(m));

 if (vm_page_xbusied(m))
  m->valid = 0;
 else
  vm_page_bits_clear(m, &m->valid, VM_PAGE_BITS_ALL);
}
