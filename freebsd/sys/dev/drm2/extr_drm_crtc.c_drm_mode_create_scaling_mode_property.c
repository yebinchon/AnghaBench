
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_property {int dummy; } ;
struct TYPE_2__ {struct drm_property* scaling_mode_property; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int ARRAY_SIZE (int ) ;
 struct drm_property* drm_property_create_enum (struct drm_device*,int ,char*,int ,int ) ;
 int drm_scaling_mode_enum_list ;

int drm_mode_create_scaling_mode_property(struct drm_device *dev)
{
 struct drm_property *scaling_mode;

 if (dev->mode_config.scaling_mode_property)
  return 0;

 scaling_mode =
  drm_property_create_enum(dev, 0, "scaling mode",
    drm_scaling_mode_enum_list,
        ARRAY_SIZE(drm_scaling_mode_enum_list));

 dev->mode_config.scaling_mode_property = scaling_mode;

 return 0;
}
