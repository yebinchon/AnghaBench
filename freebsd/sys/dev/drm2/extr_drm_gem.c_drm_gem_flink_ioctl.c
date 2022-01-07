
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_gem_object {int name; } ;
struct drm_gem_flink {int name; int handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int object_names; TYPE_1__* driver; } ;
struct TYPE_2__ {int driver_features; } ;


 int DRIVER_GEM ;
 int EALREADY ;
 int ENODEV ;
 int ENOENT ;
 int drm_gem_name_create (int *,struct drm_gem_object*,int *) ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_device*,struct drm_file*,int ) ;
 int drm_gem_object_unreference_unlocked (struct drm_gem_object*) ;

int
drm_gem_flink_ioctl(struct drm_device *dev, void *data,
      struct drm_file *file_priv)
{
 struct drm_gem_flink *args = data;
 struct drm_gem_object *obj;
 int ret;

 if (!(dev->driver->driver_features & DRIVER_GEM))
  return -ENODEV;

 obj = drm_gem_object_lookup(dev, file_priv, args->handle);
 if (obj == ((void*)0))
  return -ENOENT;

 ret = drm_gem_name_create(&dev->object_names, obj, &obj->name);
 if (ret != 0) {
  if (ret == -EALREADY)
   ret = 0;
  drm_gem_object_unreference_unlocked(obj);
 }
 if (ret == 0)
  args->name = obj->name;
 return ret;
}
