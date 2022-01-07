
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int uint64_t ;
struct slb {int slbv; } ;
typedef scalar_t__ pmap_t ;


 uintptr_t ADDR_SR_SHFT ;
 int KERNEL_VSID (uintptr_t) ;
 int SLBV_VSID_MASK ;
 int SLBV_VSID_SHIFT ;
 int allocate_user_vsid (scalar_t__,uintptr_t,int ) ;
 scalar_t__ kernel_pmap ;
 struct slb* user_va_to_slb_entry (scalar_t__,scalar_t__) ;

uint64_t
va_to_vsid(pmap_t pm, vm_offset_t va)
{
 struct slb *entry;


 if (pm == kernel_pmap)
  return (KERNEL_VSID((uintptr_t)va >> ADDR_SR_SHFT));






 entry = user_va_to_slb_entry(pm, va);

 if (entry == ((void*)0))
  return (allocate_user_vsid(pm,
      (uintptr_t)va >> ADDR_SR_SHFT, 0));

 return ((entry->slbv & SLBV_VSID_MASK) >> SLBV_VSID_SHIFT);
}
