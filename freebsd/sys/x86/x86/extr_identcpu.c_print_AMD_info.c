
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_int32_t ;
typedef int u_int ;


 int CPUID_TO_FAMILY (int) ;
 int CPUID_TO_MODEL (int) ;
 int cpu_exthigh ;
 int cpu_id ;
 int do_cpuid (int,int*) ;
 int print_AMD_assoc (int) ;
 int print_AMD_l2_assoc (int) ;
 int printf (char*,...) ;
 int rdmsr (int) ;

__attribute__((used)) static void
print_AMD_info(void)
{



 u_int regs[4];

 if (cpu_exthigh >= 0x80000005) {
  do_cpuid(0x80000005, regs);
  printf("L1 2MB data TLB: %d entries", (regs[0] >> 16) & 0xff);
  print_AMD_assoc(regs[0] >> 24);

  printf("L1 2MB instruction TLB: %d entries", regs[0] & 0xff);
  print_AMD_assoc((regs[0] >> 8) & 0xff);

  printf("L1 4KB data TLB: %d entries", (regs[1] >> 16) & 0xff);
  print_AMD_assoc(regs[1] >> 24);

  printf("L1 4KB instruction TLB: %d entries", regs[1] & 0xff);
  print_AMD_assoc((regs[1] >> 8) & 0xff);

  printf("L1 data cache: %d kbytes", regs[2] >> 24);
  printf(", %d bytes/line", regs[2] & 0xff);
  printf(", %d lines/tag", (regs[2] >> 8) & 0xff);
  print_AMD_assoc((regs[2] >> 16) & 0xff);

  printf("L1 instruction cache: %d kbytes", regs[3] >> 24);
  printf(", %d bytes/line", regs[3] & 0xff);
  printf(", %d lines/tag", (regs[3] >> 8) & 0xff);
  print_AMD_assoc((regs[3] >> 16) & 0xff);
 }

 if (cpu_exthigh >= 0x80000006) {
  do_cpuid(0x80000006, regs);
  if ((regs[0] >> 16) != 0) {
   printf("L2 2MB data TLB: %d entries",
       (regs[0] >> 16) & 0xfff);
   print_AMD_l2_assoc(regs[0] >> 28);
   printf("L2 2MB instruction TLB: %d entries",
       regs[0] & 0xfff);
   print_AMD_l2_assoc((regs[0] >> 28) & 0xf);
  } else {
   printf("L2 2MB unified TLB: %d entries",
       regs[0] & 0xfff);
   print_AMD_l2_assoc((regs[0] >> 28) & 0xf);
  }
  if ((regs[1] >> 16) != 0) {
   printf("L2 4KB data TLB: %d entries",
       (regs[1] >> 16) & 0xfff);
   print_AMD_l2_assoc(regs[1] >> 28);

   printf("L2 4KB instruction TLB: %d entries",
       (regs[1] >> 16) & 0xfff);
   print_AMD_l2_assoc((regs[1] >> 28) & 0xf);
  } else {
   printf("L2 4KB unified TLB: %d entries",
       (regs[1] >> 16) & 0xfff);
   print_AMD_l2_assoc((regs[1] >> 28) & 0xf);
  }
  printf("L2 unified cache: %d kbytes", regs[2] >> 16);
  printf(", %d bytes/line", regs[2] & 0xff);
  printf(", %d lines/tag", (regs[2] >> 8) & 0x0f);
  print_AMD_l2_assoc((regs[2] >> 12) & 0x0f);
 }
 if (CPUID_TO_FAMILY(cpu_id) == 0xf && CPUID_TO_MODEL(cpu_id) >= 0x20 &&
     CPUID_TO_MODEL(cpu_id) <= 0x3f)
  printf("WARNING: This architecture revision has known SMP "
      "hardware bugs which may cause random instability\n");
}
