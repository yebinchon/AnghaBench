
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int float32 ;
typedef int flag ;


 int __fpu_setreg (int,int ) ;
 int emul_trap (int *,int) ;
 int insn_float32_cmp ;

flag syst_float32_eq(float32 a, float32 b)
{
 u_long r;

 __fpu_setreg(0, a);
 __fpu_setreg(1, b);
 emul_trap(&insn_float32_cmp, 0x0UL);
 __asm __volatile("mov 0,%0; move %%fcc0,1,%0" : "=r" (r));
 return (r);
}
