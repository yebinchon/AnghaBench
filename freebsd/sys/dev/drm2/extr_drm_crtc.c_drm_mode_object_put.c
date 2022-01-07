
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_mode_object {int id; } ;
struct TYPE_2__ {int crtc_names; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int drm_gem_names_remove (int *,int ) ;

__attribute__((used)) static void drm_mode_object_put(struct drm_device *dev,
    struct drm_mode_object *object)
{

 drm_gem_names_remove(&dev->mode_config.crtc_names, object->id);
}
