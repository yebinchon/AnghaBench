
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_property {int dummy; } ;
struct TYPE_2__ {struct drm_property* dirty_info_property; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int ARRAY_SIZE (int ) ;
 int DRM_MODE_PROP_IMMUTABLE ;
 int drm_dirty_info_enum_list ;
 struct drm_property* drm_property_create_enum (struct drm_device*,int ,char*,int ,int ) ;

int drm_mode_create_dirty_info_property(struct drm_device *dev)
{
 struct drm_property *dirty_info;

 if (dev->mode_config.dirty_info_property)
  return 0;

 dirty_info =
  drm_property_create_enum(dev, DRM_MODE_PROP_IMMUTABLE,
        "dirty",
        drm_dirty_info_enum_list,
        ARRAY_SIZE(drm_dirty_info_enum_list));
 dev->mode_config.dirty_info_property = dirty_info;

 return 0;
}
