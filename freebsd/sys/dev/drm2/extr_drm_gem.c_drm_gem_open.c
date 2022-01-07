
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int object_names; } ;
struct drm_device {int dummy; } ;


 int drm_gem_names_init (int *) ;

void
drm_gem_open(struct drm_device *dev, struct drm_file *file_private)
{

 drm_gem_names_init(&file_private->object_names);
}
