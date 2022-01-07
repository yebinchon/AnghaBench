
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;


 int CPUID_STDEXT_CLFLUSHOPT ;
 scalar_t__ CPU_VENDOR_INTEL ;
 scalar_t__ PMAP_CLFLUSH_THRESHOLD ;
 int clflush (scalar_t__) ;
 int clflushopt (scalar_t__) ;
 int cpu_clflush_line_size ;
 int cpu_stdext_feature ;
 scalar_t__ cpu_vendor_id ;
 scalar_t__ lapic_paddr ;
 int mfence () ;
 int pmap_invalidate_cache () ;
 scalar_t__ pmap_kextract (scalar_t__) ;
 int sfence () ;

void
pmap_force_invalidate_cache_range(vm_offset_t sva, vm_offset_t eva)
{

 sva &= ~(vm_offset_t)(cpu_clflush_line_size - 1);
 if (eva - sva >= PMAP_CLFLUSH_THRESHOLD) {




  pmap_invalidate_cache();
  return;
 }
 if ((cpu_stdext_feature & CPUID_STDEXT_CLFLUSHOPT) != 0) {







  sfence();
  for (; sva < eva; sva += cpu_clflush_line_size)
   clflushopt(sva);
  sfence();
 } else {



  if (cpu_vendor_id != CPU_VENDOR_INTEL)
   mfence();
  for (; sva < eva; sva += cpu_clflush_line_size)
   clflush(sva);
  if (cpu_vendor_id != CPU_VENDOR_INTEL)
   mfence();
 }
}
