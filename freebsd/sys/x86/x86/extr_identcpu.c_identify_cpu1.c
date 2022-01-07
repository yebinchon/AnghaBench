
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_int ;


 void* cpu_feature ;
 void* cpu_feature2 ;
 void* cpu_high ;
 void* cpu_id ;
 void* cpu_procinfo ;
 char* cpu_vendor ;
 int do_cpuid (int,void**) ;

void
identify_cpu1(void)
{
 u_int regs[4];

 do_cpuid(0, regs);
 cpu_high = regs[0];
 ((u_int *)&cpu_vendor)[0] = regs[1];
 ((u_int *)&cpu_vendor)[1] = regs[3];
 ((u_int *)&cpu_vendor)[2] = regs[2];
 cpu_vendor[12] = '\0';

 do_cpuid(1, regs);
 cpu_id = regs[0];
 cpu_procinfo = regs[1];
 cpu_feature = regs[3];
 cpu_feature2 = regs[2];
}
