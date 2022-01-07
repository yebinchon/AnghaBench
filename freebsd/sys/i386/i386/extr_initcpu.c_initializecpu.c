
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_int ;


 int AMDID_RDTSCP ;
 int CPUID_FXSR ;
 int CPUID_STDEXT2_RDPID ;
 int CPUID_XMM ;
 int CR4_FXSR ;
 int CR4_XMM ;
 int EFER_NXE ;
 int MSR_EFER ;
 int MSR_HWCR ;
 int MSR_TSC_AUX ;
 int PCPU_GET (int ) ;
 int amd_feature ;
 int cpu ;
 int cpu_feature ;
 int cpu_fxsr ;
 int cpu_id ;
 int cpu_stdext_feature2 ;
 int cpu_vendor_id ;
 int cpuid ;
 int do_cpuid (int,int*) ;
 scalar_t__ elf32_nxstack ;
 int enable_K5_wt_alloc () ;
 int enable_K6_2_wt_alloc () ;
 int enable_K6_wt_alloc () ;
 int hw_instruction_sse ;
 int init_486dlc () ;
 int init_5x86 () ;
 int init_6x86 () ;
 int init_6x86MX () ;
 int init_bluelightning () ;
 int init_cy486dx () ;
 int init_i486_on_386 () ;
 int init_mendocino () ;
 int init_ppro () ;
 int init_rise () ;
 int init_transmeta () ;
 int init_via () ;
 int init_winchip () ;
 int load_cr4 (int) ;
 int rcr4 () ;
 int rdmsr (int) ;
 int wrmsr (int,int) ;

void
initializecpu(void)
{
 uint64_t msr;

 switch (cpu) {
 default:
  break;
 }
 if ((cpu_feature & CPUID_XMM) && (cpu_feature & CPUID_FXSR)) {
  load_cr4(rcr4() | CR4_FXSR | CR4_XMM);
  cpu_fxsr = hw_instruction_sse = 1;
 }
 if (elf32_nxstack) {
  msr = rdmsr(MSR_EFER) | EFER_NXE;
  wrmsr(MSR_EFER, msr);
 }
 if ((amd_feature & AMDID_RDTSCP) != 0 ||
     (cpu_stdext_feature2 & CPUID_STDEXT2_RDPID) != 0)
  wrmsr(MSR_TSC_AUX, PCPU_GET(cpuid));
}
