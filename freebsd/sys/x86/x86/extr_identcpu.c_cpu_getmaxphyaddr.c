
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;


 unsigned long long cpu_maxphyaddr ;
 int pae_mode ;

vm_paddr_t
cpu_getmaxphyaddr(void)
{





 return ((1ULL << cpu_maxphyaddr) - 1);
}
