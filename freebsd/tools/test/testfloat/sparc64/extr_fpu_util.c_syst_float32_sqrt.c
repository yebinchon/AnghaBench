
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float32 ;


 int __fpu_getreg (int ) ;
 int __fpu_setreg (int ,int ) ;
 int emul_trap (int *,int) ;
 int insn_float32_sqrt ;

float32
syst_float32_sqrt(float32 a)
{

 __fpu_setreg(0, a);
 emul_trap(&insn_float32_sqrt, 0x1UL);
 return (__fpu_getreg(0));
}
