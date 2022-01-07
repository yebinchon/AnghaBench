
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float64 ;


 int __fpu_getreg64 (int ) ;
 int __fpu_setreg64 (int,int ) ;
 int emul_trap (int *,int) ;
 int insn_float64_sub ;

float64
syst_float64_sub(float64 a, float64 b)
{

 __fpu_setreg64(0, a);
 __fpu_setreg64(2, b);
 emul_trap(&insn_float64_sub, 0x3UL);
 return (__fpu_getreg64(0));
}
