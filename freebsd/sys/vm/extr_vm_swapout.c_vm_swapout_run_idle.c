
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VM_SWAP_IDLE ;
 long time_second ;
 int vm_req_vmdaemon (int ) ;
 int vm_swap_idle_enabled ;

void
vm_swapout_run_idle(void)
{
 static long lsec;

 if (!vm_swap_idle_enabled || time_second == lsec)
  return;
 vm_req_vmdaemon(VM_SWAP_IDLE);
 lsec = time_second;
}
