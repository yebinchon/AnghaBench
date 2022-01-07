
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_gem_close {int handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_2__ {int driver_features; } ;


 int DRIVER_GEM ;
 int ENODEV ;
 int drm_gem_handle_delete (struct drm_file*,int ) ;

int
drm_gem_close_ioctl(struct drm_device *dev, void *data,
      struct drm_file *file_priv)
{
 struct drm_gem_close *args = data;
 int ret;

 if (!(dev->driver->driver_features & DRIVER_GEM))
  return -ENODEV;

 ret = drm_gem_handle_delete(file_priv, args->handle);

 return ret;
}
