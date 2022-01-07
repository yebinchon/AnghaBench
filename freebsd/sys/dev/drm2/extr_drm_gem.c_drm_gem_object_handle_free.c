
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int name; struct drm_device* dev; } ;
struct drm_device {int object_names; } ;


 struct drm_gem_object* drm_gem_names_remove (int *,int ) ;
 int drm_gem_object_unreference (struct drm_gem_object*) ;

void drm_gem_object_handle_free(struct drm_gem_object *obj)
{
 struct drm_device *dev = obj->dev;
 struct drm_gem_object *obj1;

 if (obj->name) {
  obj1 = drm_gem_names_remove(&dev->object_names, obj->name);
  obj->name = 0;
  drm_gem_object_unreference(obj1);
 }
}
