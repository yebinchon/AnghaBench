
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int uint32_t ;
typedef int u_int32_t ;
typedef int u_int ;
typedef int device_t ;


 int AGP_USER_CACHED_MEMORY ;
 int I810_PTE_VALID ;
 int I830_PTE_SYSTEM_CACHED ;
 int agp_i915_write_gtt (int ,int ,int) ;

__attribute__((used)) static void
agp_i915_install_gtt_pte(device_t dev, u_int index, vm_offset_t physical,
    int flags)
{
 uint32_t pte;

 pte = (u_int32_t)physical | I810_PTE_VALID;
 if (flags == AGP_USER_CACHED_MEMORY)
  pte |= I830_PTE_SYSTEM_CACHED;
 pte |= (physical & 0x0000000f00000000ull) >> 28;
 agp_i915_write_gtt(dev, index, pte);
}
