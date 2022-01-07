
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;


 int vm_page_bits (int,int) ;
 int vm_page_clear_dirty_mask (int ,int ) ;

void
vm_page_clear_dirty(vm_page_t m, int base, int size)
{

 vm_page_clear_dirty_mask(m, vm_page_bits(base, size));
}
