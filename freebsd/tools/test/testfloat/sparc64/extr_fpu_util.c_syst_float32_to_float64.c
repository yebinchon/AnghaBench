
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float64 ;
typedef int float32 ;


 int __fpu_getreg64 (int ) ;
 int __fpu_setreg (int ,int ) ;
 int emul_trap (int *,int) ;
 int insn_float32_to_float64 ;

float64
syst_float32_to_float64(float32 a)
{

 __fpu_setreg(0, a);
 emul_trap(&insn_float32_to_float64, 0x3UL);
 return (__fpu_getreg64(0));
}
