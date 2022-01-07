
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int float32 ;


 int __fpu_getreg (int ) ;
 int __fpu_setreg64 (int ,int ) ;
 int emul_trap (int *,int) ;
 int insn_int64_to_float32 ;

float32
syst_int64_to_float32(int64 a)
{

 __fpu_setreg64(0, a);
 emul_trap(&insn_int64_to_float32, 0x1UL);
 return (__fpu_getreg(0));
}
