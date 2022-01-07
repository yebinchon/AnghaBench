
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_local_map {scalar_t__ type; int size; int offset; int handle; } ;
struct drm_device {TYPE_1__* agp; } ;
struct TYPE_2__ {scalar_t__ cant_use_aperture; } ;


 scalar_t__ _DRM_AGP ;
 int agp_remap (int ,int ,struct drm_device*) ;
 scalar_t__ drm_core_has_AGP (struct drm_device*) ;
 int pmap_mapdev (int ,int ) ;

void drm_core_ioremap(struct drm_local_map *map, struct drm_device *dev)
{
 if (drm_core_has_AGP(dev) &&
     dev->agp && dev->agp->cant_use_aperture && map->type == _DRM_AGP)
  map->handle = agp_remap(map->offset, map->size, dev);
 else
  map->handle = pmap_mapdev(map->offset, map->size);
}
