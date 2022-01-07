
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int cpu_vendor_amd ;
 int cpu_vendor_intel ;
 int do_cpuid (int ,int *) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;

int
init_msr(void)
{
 int error;
 u_int regs[4];
 char cpu_vendor[13];

 do_cpuid(0, regs);
 ((u_int *)&cpu_vendor)[0] = regs[1];
 ((u_int *)&cpu_vendor)[1] = regs[3];
 ((u_int *)&cpu_vendor)[2] = regs[2];
 cpu_vendor[12] = '\0';

 error = 0;
 if (strcmp(cpu_vendor, "AuthenticAMD") == 0) {
  cpu_vendor_amd = 1;
 } else if (strcmp(cpu_vendor, "GenuineIntel") == 0) {
  cpu_vendor_intel = 1;
 } else {
  fprintf(stderr, "Unknown cpu vendor \"%s\"\n", cpu_vendor);
  error = -1;
 }
 return (error);
}
