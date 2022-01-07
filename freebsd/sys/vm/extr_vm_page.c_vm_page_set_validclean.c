
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int vm_page_bits_t ;
struct TYPE_10__ {int valid; int dirty; } ;


 int DEV_BSHIFT ;
 int DEV_BSIZE ;
 int PAGE_SIZE ;
 int PGA_NOSYNC ;
 int VM_PAGE_BITS_ALL ;
 int pmap_clear_modify (TYPE_1__*) ;
 int pmap_zero_page_area (TYPE_1__*,int,int) ;
 int rounddown2 (int,int) ;
 int vm_page_aflag_clear (TYPE_1__*,int ) ;
 int vm_page_assert_busied (TYPE_1__*) ;
 int vm_page_bits (int,int) ;
 int vm_page_bits_set (TYPE_1__*,int*,int) ;
 int vm_page_clear_dirty_mask (TYPE_1__*,int) ;
 scalar_t__ vm_page_xbusied (TYPE_1__*) ;

void
vm_page_set_validclean(vm_page_t m, int base, int size)
{
 vm_page_bits_t oldvalid, pagebits;
 int endoff, frag;

 vm_page_assert_busied(m);
 if (size == 0)
  return;






 if ((frag = rounddown2(base, DEV_BSIZE)) != base &&
     (m->valid & ((vm_page_bits_t)1 << (base >> DEV_BSHIFT))) == 0)
  pmap_zero_page_area(m, frag, base - frag);






 endoff = base + size;
 if ((frag = rounddown2(endoff, DEV_BSIZE)) != endoff &&
     (m->valid & ((vm_page_bits_t)1 << (endoff >> DEV_BSHIFT))) == 0)
  pmap_zero_page_area(m, endoff,
      DEV_BSIZE - (endoff & (DEV_BSIZE - 1)));
 oldvalid = m->valid;
 pagebits = vm_page_bits(base, size);
 if (vm_page_xbusied(m))
  m->valid |= pagebits;
 else
  vm_page_bits_set(m, &m->valid, pagebits);
 if (base == 0 && size == PAGE_SIZE) {





  if (oldvalid == VM_PAGE_BITS_ALL)
   pmap_clear_modify(m);
  m->dirty = 0;
  vm_page_aflag_clear(m, PGA_NOSYNC);
 } else if (oldvalid != VM_PAGE_BITS_ALL && vm_page_xbusied(m))
  m->dirty &= ~pagebits;
 else
  vm_page_clear_dirty_mask(m, pagebits);
}
