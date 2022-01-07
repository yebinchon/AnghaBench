
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_property {int dummy; } ;
struct TYPE_2__ {struct drm_property* dithering_mode_property; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int ARRAY_SIZE (int ) ;
 int drm_dithering_mode_enum_list ;
 struct drm_property* drm_property_create_enum (struct drm_device*,int ,char*,int ,int ) ;

int drm_mode_create_dithering_property(struct drm_device *dev)
{
 struct drm_property *dithering_mode;

 if (dev->mode_config.dithering_mode_property)
  return 0;

 dithering_mode =
  drm_property_create_enum(dev, 0, "dithering",
    drm_dithering_mode_enum_list,
        ARRAY_SIZE(drm_dithering_mode_enum_list));
 dev->mode_config.dithering_mode_property = dithering_mode;

 return 0;
}
