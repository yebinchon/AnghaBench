
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_int ;


 int UINT_MAX ;
 int VMW_HVCMD_GETHZ ;
 int do_cpuid (int,int*) ;
 int hv_high ;
 int tsc_freq ;
 int tsc_is_invariant ;
 int vmware_hvcall (int ,int*) ;

__attribute__((used)) static void
tsc_freq_vmware(void)
{
 u_int regs[4];

 if (hv_high >= 0x40000010) {
  do_cpuid(0x40000010, regs);
  tsc_freq = regs[0] * 1000;
 } else {
  vmware_hvcall(VMW_HVCMD_GETHZ, regs);
  if (regs[1] != UINT_MAX)
   tsc_freq = regs[0] | ((uint64_t)regs[1] << 32);
 }
 tsc_is_invariant = 1;
}
