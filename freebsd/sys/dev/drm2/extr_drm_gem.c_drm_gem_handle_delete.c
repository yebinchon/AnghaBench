
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_gem_object {struct drm_device* dev; } ;
struct drm_file {int object_names; } ;
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* gem_close_object ) (struct drm_gem_object*,struct drm_file*) ;} ;


 int EINVAL ;
 struct drm_gem_object* drm_gem_names_remove (int *,int ) ;
 int drm_gem_object_handle_unreference_unlocked (struct drm_gem_object*) ;
 int drm_gem_remove_prime_handles (struct drm_gem_object*,struct drm_file*) ;
 int stub1 (struct drm_gem_object*,struct drm_file*) ;

int
drm_gem_handle_delete(struct drm_file *filp, u32 handle)
{
 struct drm_device *dev;
 struct drm_gem_object *obj;

 obj = drm_gem_names_remove(&filp->object_names, handle);
 if (obj == ((void*)0)) {
  return -EINVAL;
 }
 dev = obj->dev;





 if (dev->driver->gem_close_object)
  dev->driver->gem_close_object(obj, filp);
 drm_gem_object_handle_unreference_unlocked(obj);

 return 0;
}
