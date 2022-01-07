
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct drm_local_map {scalar_t__ type; int size; scalar_t__ handle; } ;
struct drm_device {TYPE_1__* agp; } ;
struct TYPE_2__ {scalar_t__ cant_use_aperture; } ;


 scalar_t__ _DRM_AGP ;
 scalar_t__ drm_core_has_AGP (struct drm_device*) ;
 int pmap_unmapdev (int ,int ) ;
 int vunmap (scalar_t__) ;

void drm_core_ioremapfree(struct drm_local_map *map, struct drm_device *dev)
{
 if (!map->handle || !map->size)
  return;

 if (drm_core_has_AGP(dev) &&
     dev->agp && dev->agp->cant_use_aperture && map->type == _DRM_AGP)
  vunmap(map->handle);
 else
  pmap_unmapdev((vm_offset_t)map->handle, map->size);
}
