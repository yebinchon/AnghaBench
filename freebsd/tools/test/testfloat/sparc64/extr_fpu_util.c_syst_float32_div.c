
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float32 ;


 int __fpu_getreg (int ) ;
 int __fpu_setreg (int,int ) ;
 int emul_trap (int *,int) ;
 int insn_float32_div ;

float32
syst_float32_div(float32 a, float32 b)
{

 __fpu_setreg(0, a);
 __fpu_setreg(1, b);
 emul_trap(&insn_float32_div, 0x1UL);
 return (__fpu_getreg(0));
}
