
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int do_cpuid (int ,int *) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static bool
cpu_vendor_intel(void)
{
 u_int regs[4];
 char cpu_vendor[13];

 do_cpuid(0, regs);
 ((u_int *)&cpu_vendor)[0] = regs[1];
 ((u_int *)&cpu_vendor)[1] = regs[3];
 ((u_int *)&cpu_vendor)[2] = regs[2];
 cpu_vendor[12] = '\0';

 if (strcmp(cpu_vendor, "AuthenticAMD") == 0) {
  return (0);
 } else if (strcmp(cpu_vendor, "GenuineIntel") == 0) {
  return (1);
 } else {
  fprintf(stderr, "Unknown cpu vendor \"%s\"\n", cpu_vendor);
  exit(1);
 }
}
