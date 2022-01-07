
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;


 int DRM_LOCK (struct drm_device*) ;
 int DRM_UNLOCK (struct drm_device*) ;
 int drm_gem_free_mmap_offset (struct drm_gem_object*) ;
 int drm_gem_object_unreference (struct drm_gem_object*) ;

void
drm_gem_pager_dtr(void *handle)
{
 struct drm_gem_object *obj;
 struct drm_device *dev;

 obj = handle;
 dev = obj->dev;

 DRM_LOCK(dev);
 drm_gem_free_mmap_offset(obj);
 drm_gem_object_unreference(obj);
 DRM_UNLOCK(dev);
}
