
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int float128 ;


 int __fpu_getreg64 (int ) ;
 int __fpu_setreg128 (int ,int ) ;
 int emul_trap (int *,int) ;
 int insn_float128_to_int64_round_to_zero ;

int64
syst_float128_to_int64_round_to_zero(float128 a)
{

 __fpu_setreg128(0, a);
 emul_trap(&insn_float128_to_int64_round_to_zero, 0x3UL);
 return (__fpu_getreg64(0));
}
