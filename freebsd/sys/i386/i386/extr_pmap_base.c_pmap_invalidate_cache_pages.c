
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;


 int CPUID_CLFSH ;
 int PAGE_SIZE ;
 int PMAP_CLFLUSH_THRESHOLD ;
 int cpu_feature ;
 int pmap_flush_page (int ) ;
 int pmap_invalidate_cache () ;

void
pmap_invalidate_cache_pages(vm_page_t *pages, int count)
{
 int i;

 if (count >= PMAP_CLFLUSH_THRESHOLD / PAGE_SIZE ||
     (cpu_feature & CPUID_CLFSH) == 0) {
  pmap_invalidate_cache();
 } else {
  for (i = 0; i < count; i++)
   pmap_flush_page(pages[i]);
 }
}
