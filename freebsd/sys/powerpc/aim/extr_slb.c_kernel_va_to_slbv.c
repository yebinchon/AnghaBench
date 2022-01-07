
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int uint64_t ;


 uintptr_t ADDR_SR_SHFT ;
 scalar_t__ DMAP_BASE_ADDRESS ;
 scalar_t__ DMAP_MAX_ADDRESS ;
 int DMAP_TO_PHYS (scalar_t__) ;
 int KERNEL_VSID (uintptr_t) ;
 int SLBV_L ;
 int SLBV_VSID_SHIFT ;
 scalar_t__ hw_direct_map ;
 scalar_t__ mem_valid (int ,int ) ;

uint64_t
kernel_va_to_slbv(vm_offset_t va)
{
 uint64_t slbv;


 slbv = (KERNEL_VSID((uintptr_t)va >> ADDR_SR_SHFT)) << SLBV_VSID_SHIFT;




 if (hw_direct_map && va > DMAP_BASE_ADDRESS && va < DMAP_MAX_ADDRESS) {





  if (mem_valid(DMAP_TO_PHYS(va), 0) == 0)
   slbv |= SLBV_L;
 }

 return (slbv);
}
