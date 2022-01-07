
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUID_STDEXT_HLE ;
 int CPUID_STDEXT_RTM ;
 int IA32_ARCH_CAP_TAA_NO ;
 int IA32_ARCH_CAP_TSX_CTRL ;
 int TAA_AUTO ;
 int TAA_NONE ;
 int TAA_TAA_NO ;
 int TAA_TSX_DISABLE ;
 int TAA_VERW ;
 scalar_t__ bootverbose ;
 int cpu_ia32_arch_caps ;
 int cpu_stdext_feature ;
 int hw_mds_disable ;
 int hw_mds_recalculate () ;
 int printf (char*) ;
 int taa_set (int,int) ;
 int x86_taa_enable ;
 int x86_taa_state ;

void
x86_taa_recalculate(void)
{
 static int taa_saved_mds_disable = 0;
 int taa_need = 0, taa_state = 0;
 int mds_disable = 0, need_mds_recalc = 0;


 if ((cpu_stdext_feature & CPUID_STDEXT_HLE) == 0 ||
     (cpu_stdext_feature & CPUID_STDEXT_RTM) == 0) {

  x86_taa_state = 0;
  return;
 }


 if (cpu_ia32_arch_caps & IA32_ARCH_CAP_TAA_NO) {

  taa_need = TAA_NONE;
  taa_state = TAA_TAA_NO;
 } else if (cpu_ia32_arch_caps & IA32_ARCH_CAP_TSX_CTRL) {




  taa_need = TAA_TSX_DISABLE;
 } else {

  if (x86_taa_enable == TAA_TSX_DISABLE) {
   if (bootverbose)
    printf("TSX control not available\n");
   return;
  } else
   taa_need = TAA_VERW;
 }


 if (x86_taa_enable == TAA_AUTO)
  taa_state = taa_need;
 else
  taa_state = x86_taa_enable;


 if (taa_state == x86_taa_state) {
  if (bootverbose)
   printf("No TSX change made\n");
  return;
 }


 if (taa_state == TAA_TSX_DISABLE)
  taa_set(1, 1);
 else if (x86_taa_state == TAA_TSX_DISABLE)
  taa_set(0, 1);


 if (taa_state == TAA_VERW) {
  taa_saved_mds_disable = hw_mds_disable;
  mds_disable = hw_mds_disable = 1;
  need_mds_recalc = 1;
 } else if (x86_taa_state == TAA_VERW) {
  mds_disable = hw_mds_disable = taa_saved_mds_disable;
  need_mds_recalc = 1;
 }
 if (need_mds_recalc) {
  hw_mds_recalculate();
  if (mds_disable != hw_mds_disable) {
   if (bootverbose)
    printf("Cannot change MDS state for TAA\n");

   return;
  }
 }

 x86_taa_state = taa_state;
 return;
}
