
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int float64 ;


 int __fpu_getreg (int ) ;
 int __fpu_setreg64 (int ,int ) ;
 int emul_trap (int *,int) ;
 int insn_float64_to_int32_round_to_zero ;

int32
syst_float64_to_int32_round_to_zero(float64 a)
{

 __fpu_setreg64(0, a);
 emul_trap(&insn_float64_to_int32_round_to_zero, 0x1UL);
 return (__fpu_getreg(0));
}
