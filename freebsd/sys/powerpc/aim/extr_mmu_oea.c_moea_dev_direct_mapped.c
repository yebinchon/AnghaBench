
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_paddr_t ;
typedef int mmu_t ;
typedef int boolean_t ;


 int EFAULT ;
 scalar_t__ moea_bat_mapped (int,int ,int ) ;

boolean_t
moea_dev_direct_mapped(mmu_t mmu, vm_paddr_t pa, vm_size_t size)
{
 int i;






 for(i = 0; i < 16; i++)
  if (moea_bat_mapped(i, pa, size) == 0)
   return (0);

 return (EFAULT);
}
