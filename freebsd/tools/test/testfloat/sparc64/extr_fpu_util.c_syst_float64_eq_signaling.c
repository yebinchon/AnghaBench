
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int float64 ;
typedef int flag ;


 int __fpu_setreg64 (int,int ) ;
 int emul_trap (int *,int) ;
 int insn_float64_cmpe ;

flag syst_float64_eq_signaling(float64 a, float64 b)
{
 u_long r;

 __fpu_setreg64(0, a);
 __fpu_setreg64(2, b);
 emul_trap(&insn_float64_cmpe, 0x0UL);
 __asm __volatile("mov 0,%0; move %%fcc0,1,%0" : "=r" (r));
 return (r);
}
