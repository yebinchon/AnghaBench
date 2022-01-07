
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VM_SWAP_NORMAL ;
 int vm_req_vmdaemon (int ) ;
 scalar_t__ vm_swap_enabled ;

void
vm_swapout_run(void)
{

 if (vm_swap_enabled)
  vm_req_vmdaemon(VM_SWAP_NORMAL);
}
