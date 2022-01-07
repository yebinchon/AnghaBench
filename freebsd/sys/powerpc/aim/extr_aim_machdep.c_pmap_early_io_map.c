
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;


 scalar_t__ DMAP_BASE_ADDRESS ;
 int KASSERT (int,char*) ;
 int PSL_DR ;
 int mfmsr () ;
 int pmap_bootstrapped ;

vm_offset_t
pmap_early_io_map(vm_paddr_t pa, vm_size_t size)
{
 KASSERT(!pmap_bootstrapped, ("Not available after PMAP started!"));






 if (mfmsr() & PSL_DR)
  return (pa);
 else
  return (DMAP_BASE_ADDRESS + pa);
}
