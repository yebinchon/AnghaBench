
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_gem_open {int size; int handle; int name; } ;
struct drm_gem_object {int size; } ;
struct drm_file {int dummy; } ;
struct drm_device {int object_names; TYPE_1__* driver; } ;
struct TYPE_2__ {int driver_features; } ;


 int DRIVER_GEM ;
 int ENODEV ;
 int ENOENT ;
 int drm_gem_handle_create (struct drm_file*,struct drm_gem_object*,int *) ;
 struct drm_gem_object* drm_gem_name_ref (int *,int ,void (*) (void*)) ;
 scalar_t__ drm_gem_object_reference ;
 int drm_gem_object_unreference_unlocked (struct drm_gem_object*) ;

int
drm_gem_open_ioctl(struct drm_device *dev, void *data,
     struct drm_file *file_priv)
{
 struct drm_gem_open *args = data;
 struct drm_gem_object *obj;
 int ret;
 u32 handle;

 if (!(dev->driver->driver_features & DRIVER_GEM))
  return -ENODEV;

 obj = drm_gem_name_ref(&dev->object_names, args->name,
     (void (*)(void *))drm_gem_object_reference);
 if (!obj)
  return -ENOENT;

 ret = drm_gem_handle_create(file_priv, obj, &handle);
 drm_gem_object_unreference_unlocked(obj);
 if (ret)
  return ret;

 args->handle = handle;
 args->size = obj->size;

 return 0;
}
