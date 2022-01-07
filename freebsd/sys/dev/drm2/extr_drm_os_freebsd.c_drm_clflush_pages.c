
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;


 int DRM_ERROR (char*) ;
 int pmap_invalidate_cache_pages (int *,unsigned long) ;

void
drm_clflush_pages(vm_page_t *pages, unsigned long num_pages)
{


 pmap_invalidate_cache_pages(pages, num_pages);



}
