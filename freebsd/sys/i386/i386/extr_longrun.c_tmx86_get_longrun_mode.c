
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union msrinfo {int msr; int * regs; } ;
typedef size_t u_int ;
typedef int register_t ;


 size_t LONGRUN_MODE_MASK (int ) ;
 size_t LONGRUN_MODE_MAX ;
 size_t LONGRUN_MODE_UNKNOWN ;
 int MSR_TMx86_LONGRUN ;
 int MSR_TMx86_LONGRUN_FLAGS ;
 int intr_disable () ;
 int intr_restore (int ) ;
 size_t** longrun_modes ;
 int rdmsr (int ) ;

__attribute__((used)) static u_int
tmx86_get_longrun_mode(void)
{
 register_t saveintr;
 union msrinfo msrinfo;
 u_int low, high, flags, mode;

 saveintr = intr_disable();

 msrinfo.msr = rdmsr(MSR_TMx86_LONGRUN);
 low = LONGRUN_MODE_MASK(msrinfo.regs[0]);
 high = LONGRUN_MODE_MASK(msrinfo.regs[1]);
 flags = rdmsr(MSR_TMx86_LONGRUN_FLAGS) & 0x01;

 for (mode = 0; mode < LONGRUN_MODE_MAX; mode++) {
  if (low == longrun_modes[mode][0] &&
      high == longrun_modes[mode][1] &&
      flags == longrun_modes[mode][2]) {
   goto out;
  }
 }
 mode = LONGRUN_MODE_UNKNOWN;
out:
 intr_restore(saveintr);
 return (mode);
}
