
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int vm_page_bits_t ;
struct TYPE_7__ {int dirty; } ;


 int pmap_page_is_write_mapped (TYPE_1__*) ;
 int vm_page_assert_busied (TYPE_1__*) ;
 int vm_page_bits_clear (TYPE_1__*,int *,int ) ;
 scalar_t__ vm_page_xbusied (TYPE_1__*) ;

__attribute__((used)) static __inline void
vm_page_clear_dirty_mask(vm_page_t m, vm_page_bits_t pagebits)
{

 vm_page_assert_busied(m);
 if (vm_page_xbusied(m) && !pmap_page_is_write_mapped(m))
  m->dirty &= ~pagebits;
 else
  vm_page_bits_clear(m, &m->dirty, pagebits);
}
