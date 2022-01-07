
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;


 int CCR3 ;
 int CCR3_MAPEN0 ;
 int CCR4 ;
 int CCR4_CPUID ;
 int CPUID2_MON ;
 int CPUID5_MON_MAX_SIZE ;
 int CPUID5_MON_MIN_SIZE ;
 int CPUID_PAE ;
 scalar_t__ CPU_486 ;
 scalar_t__ CPU_486DLC ;
 scalar_t__ CPU_BLUE ;
 scalar_t__ CPU_CY486DX ;
 scalar_t__ CPU_M1 ;
 scalar_t__ CPU_M1SC ;
 scalar_t__ CPU_M2 ;
 scalar_t__ CPU_VENDOR_AMD ;
 scalar_t__ CPU_VENDOR_CENTAUR ;
 scalar_t__ CPU_VENDOR_CYRIX ;
 scalar_t__ CPU_VENDOR_IBM ;
 scalar_t__ CPU_VENDOR_INTEL ;
 scalar_t__ CPU_VENDOR_NSC ;
 scalar_t__ CPU_VENDOR_TRANSMETA ;
 scalar_t__ IDENTBLUE_IBMCPU ;
 int amd_extended_feature_extensions ;
 int amd_feature ;
 int amd_feature2 ;
 int amd_pminfo ;
 int amd_rascap ;
 scalar_t__ cpu ;
 int cpu_exthigh ;
 int cpu_feature ;
 int cpu_feature2 ;
 int cpu_high ;
 int cpu_id ;
 int cpu_maxphyaddr ;
 int cpu_mon_max_size ;
 int cpu_mon_min_size ;
 int cpu_mon_mwait_flags ;
 int cpu_procinfo2 ;
 char* cpu_vendor ;
 scalar_t__ cpu_vendor_id ;
 int cyrix_did ;
 int do_cpuid (int,int*) ;
 scalar_t__ identblue () ;
 int identify_cpu2 () ;
 int identify_cpu_fixup_bsp () ;
 int identifycyrix () ;
 int read_cyrix_reg (int ) ;
 int strcpy (char*,char*) ;
 int write_cyrix_reg (int ,int) ;

void
finishidentcpu(void)
{
 u_int regs[4];




 identify_cpu_fixup_bsp();

 if (cpu_high >= 5 && (cpu_feature2 & CPUID2_MON) != 0) {
  do_cpuid(5, regs);
  cpu_mon_mwait_flags = regs[2];
  cpu_mon_min_size = regs[0] & CPUID5_MON_MIN_SIZE;
  cpu_mon_max_size = regs[1] & CPUID5_MON_MAX_SIZE;
 }

 identify_cpu2();
 if (cpu_vendor_id == CPU_VENDOR_INTEL ||
     cpu_vendor_id == CPU_VENDOR_AMD ||
     cpu_vendor_id == CPU_VENDOR_CENTAUR) {
  do_cpuid(0x80000000, regs);
  cpu_exthigh = regs[0];
 }

 if (cpu_exthigh >= 0x80000001) {
  do_cpuid(0x80000001, regs);
  amd_feature = regs[3] & ~(cpu_feature & 0x0183f3ff);
  amd_feature2 = regs[2];
 }
 if (cpu_exthigh >= 0x80000007) {
  do_cpuid(0x80000007, regs);
  amd_rascap = regs[1];
  amd_pminfo = regs[3];
 }
 if (cpu_exthigh >= 0x80000008) {
  do_cpuid(0x80000008, regs);
  cpu_maxphyaddr = regs[0] & 0xff;
  amd_extended_feature_extensions = regs[1];
  cpu_procinfo2 = regs[2];
 } else {
  cpu_maxphyaddr = (cpu_feature & CPUID_PAE) != 0 ? 36 : 32;
 }
}
