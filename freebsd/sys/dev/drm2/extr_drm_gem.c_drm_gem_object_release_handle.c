
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_gem_object {struct drm_device* dev; } ;
struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* gem_close_object ) (struct drm_gem_object*,struct drm_file*) ;} ;


 int drm_gem_object_handle_unreference_unlocked (struct drm_gem_object*) ;
 int drm_gem_remove_prime_handles (struct drm_gem_object*,struct drm_file*) ;
 int stub1 (struct drm_gem_object*,struct drm_file*) ;

__attribute__((used)) static int
drm_gem_object_release_handle(uint32_t name, void *ptr, void *data)
{
 struct drm_file *file_priv = data;
 struct drm_gem_object *obj = ptr;
 struct drm_device *dev = obj->dev;





 if (dev->driver->gem_close_object)
  dev->driver->gem_close_object(obj, file_priv);

 drm_gem_object_handle_unreference_unlocked(obj);

 return 0;
}
