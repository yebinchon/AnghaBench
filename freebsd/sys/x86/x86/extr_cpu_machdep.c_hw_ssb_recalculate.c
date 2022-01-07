
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IA32_ARCH_CAP_SSB_NO ;
 int cpu_ia32_arch_caps ;
 int hw_ssb_disable ;
 int hw_ssb_set (int,int) ;

void
hw_ssb_recalculate(bool all_cpus)
{

 switch (hw_ssb_disable) {
 default:
  hw_ssb_disable = 0;

 case 0:
  hw_ssb_set(0, all_cpus);
  break;
 case 1:
  hw_ssb_set(1, all_cpus);
  break;
 case 2:
  hw_ssb_set((cpu_ia32_arch_caps & IA32_ARCH_CAP_SSB_NO) != 0 ?
      0 : 1, all_cpus);
  break;
 }
}
