
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int uint32_t ;
typedef int register_t ;


 scalar_t__ DMAP_BASE_ADDRESS ;
 int HID5_970_DCBZ_SIZE_HI ;
 int PSL_DR ;
 int PSL_IR ;
 int SPR_HID5 ;
 int __restartkernel (scalar_t__,int ,scalar_t__,void*,int ,scalar_t__,int) ;
 int mfmsr () ;
 int mfpvr () ;
 int mfspr (int ) ;
 int mtmsr (int) ;
 int mtspr (int ,int ) ;
 int n_slbs ;

void
aim_early_init(vm_offset_t fdt, vm_offset_t toc, vm_offset_t ofentry, void *mdp,
    uint32_t mdp_cookie)
{
 register_t scratch;
 if (ofentry == 0)
  mtmsr(mfmsr() & ~(PSL_IR | PSL_DR));
 switch (mfpvr() >> 16) {





  case 137:
  case 136:
  case 134:
  case 135:
   scratch = mfspr(SPR_HID5);
   scratch &= ~HID5_970_DCBZ_SIZE_HI;
   mtspr(SPR_HID5, scratch);
   break;
 }
}
