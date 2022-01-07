
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int float128 ;


 int __fpu_getreg128 (int ) ;
 int __fpu_setreg (int ,int ) ;
 int emul_trap (int *,int) ;
 int insn_int32_to_float128 ;

float128
syst_int32_to_float128(int32 a)
{

 __fpu_setreg(0, a);
 emul_trap(&insn_int32_to_float128, 0xfUL);
 return (__fpu_getreg128(0));
}
