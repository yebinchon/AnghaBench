
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUID_CLFSH ;
 int CPUID_STDEXT_CLFLUSHOPT ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 scalar_t__ VM_GUEST_NO ;
 int cpu_clflush_line_size ;
 int cpu_feature ;
 int cpu_procinfo ;
 int cpu_stdext_feature ;
 int hw_clflush_disable ;
 scalar_t__ vm_guest ;

void
initializecpucache(void)
{






 if ((cpu_feature & CPUID_CLFSH) != 0)
  cpu_clflush_line_size = ((cpu_procinfo >> 8) & 0xff) * 8;






 TUNABLE_INT_FETCH("hw.clflush_disable", &hw_clflush_disable);
 if (vm_guest != VM_GUEST_NO && hw_clflush_disable == -1) {
  cpu_feature &= ~CPUID_CLFSH;
  cpu_stdext_feature &= ~CPUID_STDEXT_CLFLUSHOPT;
 }




 if (hw_clflush_disable == 1) {
  cpu_feature &= ~CPUID_CLFSH;
  cpu_stdext_feature &= ~CPUID_STDEXT_CLFLUSHOPT;
 }
}
