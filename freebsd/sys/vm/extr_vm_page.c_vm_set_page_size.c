
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int v_page_size; } ;


 int PAGE_SIZE ;
 int panic (char*) ;
 TYPE_1__ vm_cnt ;

void
vm_set_page_size(void)
{
 if (vm_cnt.v_page_size == 0)
  vm_cnt.v_page_size = PAGE_SIZE;
 if (((vm_cnt.v_page_size - 1) & vm_cnt.v_page_size) != 0)
  panic("vm_set_page_size: page size not a power of two");
}
