
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int float128 ;
typedef int flag ;


 int __fpu_setreg128 (int,int ) ;
 int emul_trap (int *,int) ;
 int insn_float128_cmpe ;

flag syst_float128_eq_signaling(float128 a, float128 b)
{
 u_long r;

 __fpu_setreg128(0, a);
 __fpu_setreg128(4, b);
 emul_trap(&insn_float128_cmpe, 0x0UL);
 __asm __volatile("mov 0,%0; move %%fcc0,1,%0" : "=r" (r));
 return (r);
}
