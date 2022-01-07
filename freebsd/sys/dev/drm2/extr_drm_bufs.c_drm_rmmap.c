
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_local_map {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRM_LOCK (struct drm_device*) ;
 int DRM_UNLOCK (struct drm_device*) ;
 int drm_rmmap_locked (struct drm_device*,struct drm_local_map*) ;

int drm_rmmap(struct drm_device *dev, struct drm_local_map *map)
{
 int ret;

 DRM_LOCK(dev);
 ret = drm_rmmap_locked(dev, map);
 DRM_UNLOCK(dev);

 return ret;
}
