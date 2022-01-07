
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_gem_object {int vm_obj; } ;
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_2__ {scalar_t__ (* gem_init_object ) (struct drm_gem_object*) ;} ;


 int DRM_MEM_DRIVER ;
 int M_NOWAIT ;
 int M_ZERO ;
 scalar_t__ drm_gem_object_init (struct drm_device*,struct drm_gem_object*,size_t) ;
 int free (struct drm_gem_object*,int ) ;
 struct drm_gem_object* malloc (int,int ,int) ;
 scalar_t__ stub1 (struct drm_gem_object*) ;
 int vm_object_deallocate (int ) ;

struct drm_gem_object *
drm_gem_object_alloc(struct drm_device *dev, size_t size)
{
 struct drm_gem_object *obj;

 obj = malloc(sizeof(*obj), DRM_MEM_DRIVER, M_NOWAIT | M_ZERO);
 if (!obj)
  goto free;

 if (drm_gem_object_init(dev, obj, size) != 0)
  goto free;

 if (dev->driver->gem_init_object != ((void*)0) &&
     dev->driver->gem_init_object(obj) != 0) {
  goto dealloc;
 }
 return obj;
dealloc:
 vm_object_deallocate(obj->vm_obj);
free:
 free(obj, DRM_MEM_DRIVER);
 return ((void*)0);
}
