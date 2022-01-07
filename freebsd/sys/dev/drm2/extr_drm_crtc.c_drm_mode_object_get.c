
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_mode_object {int id; int type; } ;
struct TYPE_2__ {int crtc_names; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int drm_gem_name_create (int *,struct drm_mode_object*,int*) ;

__attribute__((used)) static int drm_mode_object_get(struct drm_device *dev,
          struct drm_mode_object *obj, uint32_t obj_type)
{
 int new_id = 0;
 int ret;

 ret = drm_gem_name_create(&dev->mode_config.crtc_names, obj, &new_id);
 if (ret)
  return ret;

 obj->id = new_id;
 obj->type = obj_type;
 return 0;
}
