
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int object_names; } ;
struct drm_device {int dummy; } ;


 int drm_gem_names_fini (int *) ;
 int drm_gem_names_foreach (int *,int ,struct drm_file*) ;
 int drm_gem_object_release_handle ;

void
drm_gem_release(struct drm_device *dev, struct drm_file *file_private)
{
 drm_gem_names_foreach(&file_private->object_names,
     drm_gem_object_release_handle, file_private);

 drm_gem_names_fini(&file_private->object_names);
}
