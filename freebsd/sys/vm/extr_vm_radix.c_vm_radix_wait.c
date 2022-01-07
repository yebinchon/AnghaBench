
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int uma_zwait (int ) ;
 int vm_radix_node_zone ;

void
vm_radix_wait(void)
{
 uma_zwait(vm_radix_node_zone);
}
