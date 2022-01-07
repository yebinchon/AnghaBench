
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_gem_object {struct drm_device* dev; } ;
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* gem_free_object ) (struct drm_gem_object*) ;} ;


 int DRM_LOCK_ASSERT (struct drm_device*) ;
 int stub1 (struct drm_gem_object*) ;

void
drm_gem_object_free(struct drm_gem_object *obj)
{
 struct drm_device *dev = obj->dev;

 DRM_LOCK_ASSERT(dev);
 if (dev->driver->gem_free_object != ((void*)0))
  dev->driver->gem_free_object(obj);
}
