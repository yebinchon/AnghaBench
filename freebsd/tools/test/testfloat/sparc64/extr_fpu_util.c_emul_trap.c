
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long u_long ;
typedef scalar_t__ u_int32_t ;
typedef int u_int ;
struct TYPE_3__ {int uf_fsr; unsigned long uf_pc; } ;


 int FSR_FTT_MASK ;
 int FSR_FTT_SHIFT ;
 int FSR_FTT_UNFIN ;
 scalar_t__* __fpreg ;
 scalar_t__ __fpu_exception (TYPE_1__*) ;
 int fprintf (int ,char*,int,scalar_t__,scalar_t__) ;
 int stderr ;
 TYPE_1__ utf ;

__attribute__((used)) static void
emul_trap(const u_int *insn, u_long mask)
{
 u_int32_t savreg[64];
 int i;

 for (i = 0; i < 64; i++)
     savreg[i] = __fpreg[i];

 utf.uf_fsr = (utf.uf_fsr & ~FSR_FTT_MASK) |
  (FSR_FTT_UNFIN << FSR_FTT_SHIFT);
 utf.uf_pc = (u_long)insn;
 if (__fpu_exception(&utf) == 0)
     __asm("stx %%fsr,%0" : "=m" (utf.uf_fsr));

 for (i = 0; i < 64; i++) {
  if (!(mask & (1UL << i)) && savreg[i] != __fpreg[i]) {
   fprintf(stderr, "### %2d %08x != %08x\n",
       i, savreg[i], __fpreg[i]);
  }
 }
}
