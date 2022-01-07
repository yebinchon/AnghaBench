
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;


 int DRM_ERROR (char*) ;
 int pmap_force_invalidate_cache_range (scalar_t__,scalar_t__) ;

void
drm_clflush_virt_range(char *addr, unsigned long length)
{


 pmap_force_invalidate_cache_range((vm_offset_t)addr,
     (vm_offset_t)addr + length);



}
