
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int vm_obj; } ;


 int vm_object_deallocate (int ) ;

void
drm_gem_object_release(struct drm_gem_object *obj)
{




 vm_object_deallocate(obj->vm_obj);
}
