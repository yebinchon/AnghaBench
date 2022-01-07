
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int CPUID_HV_IFACE_HYPERV ;
 int CPUID_HV_MSR_HYPERCALL ;
 unsigned int CPUID_LEAF_HV_FEATURES ;
 unsigned int CPUID_LEAF_HV_HWFEATURES ;
 unsigned int CPUID_LEAF_HV_IDENTITY ;
 unsigned int CPUID_LEAF_HV_INTERFACE ;
 unsigned int CPUID_LEAF_HV_LIMITS ;
 unsigned int CPUID_LEAF_HV_MAXLEAF ;
 unsigned int CPUID_LEAF_HV_RECOMMENDS ;
 int CPUPM_HV_CSTATE (int) ;
 int CPUPM_HV_CSTATE_MASK ;
 scalar_t__ VM_GUEST_HV ;
 scalar_t__ bootverbose ;
 int do_cpuid (unsigned int,int*) ;
 int hyperv_features ;
 int hyperv_features3 ;
 int hyperv_pm_features ;
 int hyperv_recommends ;
 int hyperv_ver_major ;
 int printf (char*,int,...) ;
 scalar_t__ vm_guest ;

__attribute__((used)) static bool
hyperv_identify(void)
{
 u_int regs[4];
 unsigned int maxleaf;

 if (vm_guest != VM_GUEST_HV)
  return (0);

 do_cpuid(CPUID_LEAF_HV_MAXLEAF, regs);
 maxleaf = regs[0];
 if (maxleaf < CPUID_LEAF_HV_LIMITS)
  return (0);

 do_cpuid(CPUID_LEAF_HV_INTERFACE, regs);
 if (regs[0] != CPUID_HV_IFACE_HYPERV)
  return (0);

 do_cpuid(CPUID_LEAF_HV_FEATURES, regs);
 if ((regs[0] & CPUID_HV_MSR_HYPERCALL) == 0) {




  return (0);
 }
 hyperv_features = regs[0];
 hyperv_pm_features = regs[2];
 hyperv_features3 = regs[3];

 do_cpuid(CPUID_LEAF_HV_IDENTITY, regs);
 hyperv_ver_major = regs[1] >> 16;
 printf("Hyper-V Version: %d.%d.%d [SP%d]\n",
     hyperv_ver_major, regs[1] & 0xffff, regs[0], regs[2]);

 printf("  Features=0x%b\n", hyperv_features,
     "\020"
     "\001VPRUNTIME"
     "\002TMREFCNT"
     "\003SYNIC"
     "\004SYNTM"
     "\005APIC"
     "\006HYPERCALL"
     "\007VPINDEX"
     "\010RESET"
     "\011STATS"
     "\012REFTSC"
     "\013IDLE"
     "\014TMFREQ"
     "\015DEBUG");
 printf("  PM Features=0x%b [C%u]\n",
     (hyperv_pm_features & ~CPUPM_HV_CSTATE_MASK),
     "\020"
     "\005C3HPET",
     CPUPM_HV_CSTATE(hyperv_pm_features));
 printf("  Features3=0x%b\n", hyperv_features3,
     "\020"
     "\001MWAIT"
     "\002DEBUG"
     "\003PERFMON"
     "\004PCPUDPE"
     "\005XMMHC"
     "\006IDLE"
     "\007SLEEP"
     "\010NUMA"
     "\011TMFREQ"
     "\012SYNCMC"
     "\013CRASH"
     "\014DEBUGMSR"
     "\015NPIEP"
     "\016HVDIS");

 do_cpuid(CPUID_LEAF_HV_RECOMMENDS, regs);
 hyperv_recommends = regs[0];
 if (bootverbose)
  printf("  Recommends: %08x %08x\n", regs[0], regs[1]);

 do_cpuid(CPUID_LEAF_HV_LIMITS, regs);
 if (bootverbose) {
  printf("  Limits: Vcpu:%d Lcpu:%d Int:%d\n",
      regs[0], regs[1], regs[2]);
 }

 if (maxleaf >= CPUID_LEAF_HV_HWFEATURES) {
  do_cpuid(CPUID_LEAF_HV_HWFEATURES, regs);
  if (bootverbose) {
   printf("  HW Features: %08x, AMD: %08x\n",
       regs[0], regs[3]);
  }
 }

 return (1);
}
