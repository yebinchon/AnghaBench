
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 int invlpg (int) ;
 int pmap_kremove (int) ;
 int round_page (int ) ;

__attribute__((used)) static void
table_unmap(void *data, vm_offset_t length)
{
 vm_offset_t va, off;

 va = (vm_offset_t)data;
 off = va & PAGE_MASK;
 length = round_page(length + off);
 va &= ~PAGE_MASK;
 while (length > 0) {
  pmap_kremove(va);
  invlpg(va);
  va += PAGE_SIZE;
  length -= PAGE_SIZE;
 }
}
