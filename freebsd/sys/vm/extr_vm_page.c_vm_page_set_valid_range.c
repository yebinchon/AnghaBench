
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int vm_page_bits_t ;
struct TYPE_7__ {int valid; int dirty; } ;


 int DEV_BSHIFT ;
 int DEV_BSIZE ;
 int KASSERT (int,char*) ;
 int pmap_zero_page_area (TYPE_1__*,int,int) ;
 int rounddown2 (int,int) ;
 int vm_page_assert_busied (TYPE_1__*) ;
 int vm_page_bits (int,int) ;
 int vm_page_bits_set (TYPE_1__*,int*,int) ;
 scalar_t__ vm_page_xbusied (TYPE_1__*) ;

void
vm_page_set_valid_range(vm_page_t m, int base, int size)
{
 int endoff, frag;
 vm_page_bits_t pagebits;

 vm_page_assert_busied(m);
 if (size == 0)
  return;






 if ((frag = rounddown2(base, DEV_BSIZE)) != base &&
     (m->valid & (1 << (base >> DEV_BSHIFT))) == 0)
  pmap_zero_page_area(m, frag, base - frag);






 endoff = base + size;
 if ((frag = rounddown2(endoff, DEV_BSIZE)) != endoff &&
     (m->valid & (1 << (endoff >> DEV_BSHIFT))) == 0)
  pmap_zero_page_area(m, endoff,
      DEV_BSIZE - (endoff & (DEV_BSIZE - 1)));





 KASSERT((~m->valid & vm_page_bits(base, size) & m->dirty) == 0,
     ("vm_page_set_valid_range: page %p is dirty", m));




 pagebits = vm_page_bits(base, size);
 if (vm_page_xbusied(m))
  m->valid |= pagebits;
 else
  vm_page_bits_set(m, &m->valid, pagebits);
}
