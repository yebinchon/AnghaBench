
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct drm_mode_object {scalar_t__ type; scalar_t__ id; } ;
struct TYPE_2__ {int crtc_names; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 struct drm_mode_object* drm_gem_name_ref (int *,scalar_t__,int *) ;

struct drm_mode_object *drm_mode_object_find(struct drm_device *dev,
  uint32_t id, uint32_t type)
{
 struct drm_mode_object *obj = ((void*)0);

 obj = drm_gem_name_ref(&dev->mode_config.crtc_names, id, ((void*)0));
 if (!obj || (obj->type != type) || (obj->id != id))
  obj = ((void*)0);

 return obj;
}
