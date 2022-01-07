
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float128 ;


 int __fpu_getreg128 (int ) ;
 int __fpu_setreg128 (int ,int ) ;
 int emul_trap (int *,int) ;
 int insn_float128_sqrt ;

float128
syst_float128_sqrt(float128 a)
{

 __fpu_setreg128(0, a);
 emul_trap(&insn_float128_sqrt, 0xfUL);
 return (__fpu_getreg128(0));
}
