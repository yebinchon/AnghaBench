
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union msrinfo {int* regs; void* msr; } ;
typedef size_t u_int ;
typedef int register_t ;


 size_t LONGRUN_MODE_UNKNOWN ;
 void* LONGRUN_MODE_WRITE (int,int) ;
 int MSR_TMx86_LONGRUN ;
 int MSR_TMx86_LONGRUN_FLAGS ;
 int intr_disable () ;
 int intr_restore (int ) ;
 int** longrun_modes ;
 void* rdmsr (int ) ;
 int wrmsr (int ,void*) ;

__attribute__((used)) static u_int
tmx86_set_longrun_mode(u_int mode)
{
 register_t saveintr;
 union msrinfo msrinfo;

 if (mode >= LONGRUN_MODE_UNKNOWN) {
  return (0);
 }

 saveintr = intr_disable();


 msrinfo.msr = rdmsr(MSR_TMx86_LONGRUN);
 msrinfo.regs[0] = LONGRUN_MODE_WRITE(msrinfo.regs[0],
          longrun_modes[mode][0]);
 msrinfo.regs[1] = LONGRUN_MODE_WRITE(msrinfo.regs[1],
          longrun_modes[mode][1]);
 wrmsr(MSR_TMx86_LONGRUN, msrinfo.msr);


 msrinfo.msr = rdmsr(MSR_TMx86_LONGRUN_FLAGS);
 msrinfo.regs[0] = (msrinfo.regs[0] & ~0x01) | longrun_modes[mode][2];
 wrmsr(MSR_TMx86_LONGRUN_FLAGS, msrinfo.msr);

 intr_restore(saveintr);
 return (1);
}
