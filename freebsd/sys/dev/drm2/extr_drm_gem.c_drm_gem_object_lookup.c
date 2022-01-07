
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int object_names; } ;
struct drm_device {int dummy; } ;


 struct drm_gem_object* drm_gem_name_ref (int *,int ,void (*) (void*)) ;
 scalar_t__ drm_gem_object_reference ;

struct drm_gem_object *
drm_gem_object_lookup(struct drm_device *dev, struct drm_file *filp,
        u32 handle)
{
 struct drm_gem_object *obj;

 obj = drm_gem_name_ref(&filp->object_names, handle,
     (void (*)(void *))drm_gem_object_reference);

 return obj;
}
