
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_int ;


 int TUNABLE_INT_FETCH (char*,int *) ;
 int TUNABLE_QUAD_FETCH (char*,int*) ;
 int XFEATURE_AVX512 ;
 int XFEATURE_ENABLED_SSE ;
 int XFEATURE_ENABLED_X87 ;
 int XFEATURE_MPX ;
 int cpuid_count (int,int,int*) ;
 int lazy_fpu_switch ;
 int panic (char*,int) ;
 int use_xsave ;
 int xsave_mask ;

__attribute__((used)) static void
npxinit_bsp1(void)
{
 u_int cp[4];
 uint64_t xsave_mask_user;

 TUNABLE_INT_FETCH("hw.lazy_fpu_switch", &lazy_fpu_switch);
 if (!use_xsave)
  return;
 cpuid_count(0xd, 0x0, cp);
 xsave_mask = XFEATURE_ENABLED_X87 | XFEATURE_ENABLED_SSE;
 if ((cp[0] & xsave_mask) != xsave_mask)
  panic("CPU0 does not support X87 or SSE: %x", cp[0]);
 xsave_mask = ((uint64_t)cp[3] << 32) | cp[0];
 xsave_mask_user = xsave_mask;
 TUNABLE_QUAD_FETCH("hw.xsave_mask", &xsave_mask_user);
 xsave_mask_user |= XFEATURE_ENABLED_X87 | XFEATURE_ENABLED_SSE;
 xsave_mask &= xsave_mask_user;
 if ((xsave_mask & XFEATURE_AVX512) != XFEATURE_AVX512)
  xsave_mask &= ~XFEATURE_AVX512;
 if ((xsave_mask & XFEATURE_MPX) != XFEATURE_MPX)
  xsave_mask &= ~XFEATURE_MPX;
}
