
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int register_t ;


 int do_cpuid (int,int*) ;
 int intr_disable () ;
 int intr_restore (int ) ;

__attribute__((used)) static u_int
tmx86_get_longrun_status(u_int * frequency, u_int * voltage, u_int * percentage)
{
 register_t saveintr;
 u_int regs[4];

 saveintr = intr_disable();

 do_cpuid(0x80860007, regs);
 *frequency = regs[0];
 *voltage = regs[1];
 *percentage = regs[2];

 intr_restore(saveintr);
 return (1);
}
