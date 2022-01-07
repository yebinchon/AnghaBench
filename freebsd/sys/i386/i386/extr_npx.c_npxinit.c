
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union savefpu {int dummy; } savefpu ;
typedef int u_short ;
typedef int u_int ;
typedef int register_t ;


 int CR4_XSAVE ;
 int XCR0 ;
 int __INITIAL_MXCSR__ ;
 int __INITIAL_NPXCW__ ;
 scalar_t__ cpu_fxsr ;
 int fldcw (int ) ;
 int fninit () ;
 int fnsave (union savefpu*) ;
 int intr_disable () ;
 int intr_restore (int ) ;
 int ldmxcsr (int ) ;
 int load_cr4 (int) ;
 int load_xcr (int ,int ) ;
 int npx_probe () ;
 int npxinit_bsp1 () ;
 int npxinit_bsp2 () ;
 int rcr4 () ;
 int start_emulating () ;
 int stop_emulating () ;
 scalar_t__ use_xsave ;
 int xsave_mask ;

void
npxinit(bool bsp)
{
 static union savefpu dummy;
 register_t saveintr;
 u_int mxcsr;
 u_short control;

 if (bsp) {
  if (!npx_probe())
   return;
  npxinit_bsp1();
 }

 if (use_xsave) {
  load_cr4(rcr4() | CR4_XSAVE);
  load_xcr(XCR0, xsave_mask);
 }




 if (bsp)
  npxinit_bsp2();
 saveintr = intr_disable();
 stop_emulating();
 if (cpu_fxsr)
  fninit();
 else
  fnsave(&dummy);
 control = __INITIAL_NPXCW__;
 fldcw(control);
 if (cpu_fxsr) {
  mxcsr = __INITIAL_MXCSR__;
  ldmxcsr(mxcsr);
 }
 start_emulating();
 intr_restore(saveintr);
}
