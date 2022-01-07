
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int (* status ) (int) ;int (* ctl ) (int) ;int misc; int addr; } ;


 int AMDRAS_SCALABLE_MCA ;
 int CPUID_MCA ;
 int CPUID_MCE ;
 int CPUID_TO_FAMILY (int ) ;
 int CPUID_TO_MODEL (int ) ;
 scalar_t__ CPU_VENDOR_AMD ;
 scalar_t__ CPU_VENDOR_INTEL ;
 int CR4_MCE ;
 scalar_t__ IS_BSP () ;
 int MCG_CAP_COUNT ;
 int MCG_CAP_CTL_P ;
 int MCG_CTL_ENABLE ;
 int MC_AMDNB_BANK ;
 int MSR_MC0_CTL_MASK ;
 int MSR_MCG_CAP ;
 int MSR_MCG_CTL ;
 scalar_t__ PCPU_GET (int ) ;
 int PCPU_SET (int ,int ) ;
 int amd10h_L1TP ;
 int amd_rascap ;
 int amd_thresholding_monitor (int) ;
 int amd_thresholding_resume (int) ;
 scalar_t__ amd_thresholding_supported () ;
 int cmci_mask ;
 int cmci_monitor (int) ;
 int cmci_resume (int) ;
 scalar_t__ cmci_supported (int) ;
 int cpu_feature ;
 int cpu_id ;
 scalar_t__ cpu_vendor_id ;
 int lapic_enable_cmc () ;
 int load_cr4 (int) ;
 int mca_enabled ;
 int mca_lock ;
 TYPE_1__ mca_msr_ops ;
 int mca_setup (int) ;
 int mca_smca_addr_reg ;
 int mca_smca_ctl_reg (int) ;
 int mca_smca_misc_reg ;
 int mca_smca_status_reg (int) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int rcr4 () ;
 int rdmsr (int ) ;
 int stub1 (int) ;
 int stub2 (int) ;
 int wrmsr (int ,int) ;

__attribute__((used)) static void
_mca_init(int boot)
{
 uint64_t mcg_cap;
 uint64_t ctl, mask;
 int i, skip, family;

 family = CPUID_TO_FAMILY(cpu_id);


 if (!mca_enabled || !(cpu_feature & CPUID_MCE))
  return;

 if (cpu_feature & CPUID_MCA) {
  if (boot)
   PCPU_SET(cmci_mask, 0);

  mcg_cap = rdmsr(MSR_MCG_CAP);
  if (mcg_cap & MCG_CAP_CTL_P)

   wrmsr(MSR_MCG_CTL, MCG_CTL_ENABLE);
  if (IS_BSP() && boot)
   mca_setup(mcg_cap);
  if (cpu_vendor_id == CPU_VENDOR_AMD && family == 0x10 &&
      !amd10h_L1TP) {
   mask = rdmsr(MSR_MC0_CTL_MASK);
   if ((mask & (1UL << 5)) == 0)
    wrmsr(MSR_MC0_CTL_MASK, mask | (1UL << 5));
  }
  if (amd_rascap & AMDRAS_SCALABLE_MCA) {
   mca_msr_ops.ctl = mca_smca_ctl_reg;
   mca_msr_ops.status = mca_smca_status_reg;
   mca_msr_ops.addr = mca_smca_addr_reg;
   mca_msr_ops.misc = mca_smca_misc_reg;
  }





  if (boot)
   mtx_lock_spin(&mca_lock);

  for (i = 0; i < (mcg_cap & MCG_CAP_COUNT); i++) {

   ctl = 0xffffffffffffffffUL;
   skip = 0;

   if (cpu_vendor_id == CPU_VENDOR_INTEL) {




    if (i == 0 && family == 0x6
        && CPUID_TO_MODEL(cpu_id) < 0x1a)
     skip = 1;
   } else if (cpu_vendor_id == CPU_VENDOR_AMD) {

    if (i == MC_AMDNB_BANK && family >= 0xf &&
        family < 0x17)
     ctl &= ~(1UL << 10);
   }

   if (!skip)
    wrmsr(mca_msr_ops.ctl(i), ctl);
   wrmsr(mca_msr_ops.status(i), 0);
  }
  if (boot)
   mtx_unlock_spin(&mca_lock);






 }

 load_cr4(rcr4() | CR4_MCE);
}
