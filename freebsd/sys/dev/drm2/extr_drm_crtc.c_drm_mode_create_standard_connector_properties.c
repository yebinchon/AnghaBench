
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_property {int dummy; } ;
struct TYPE_2__ {struct drm_property* dpms_property; struct drm_property* edid_property; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int ARRAY_SIZE (int ) ;
 int DRM_MODE_PROP_BLOB ;
 int DRM_MODE_PROP_IMMUTABLE ;
 int drm_dpms_enum_list ;
 struct drm_property* drm_property_create (struct drm_device*,int,char*,int ) ;
 struct drm_property* drm_property_create_enum (struct drm_device*,int ,char*,int ,int ) ;

__attribute__((used)) static int drm_mode_create_standard_connector_properties(struct drm_device *dev)
{
 struct drm_property *edid;
 struct drm_property *dpms;




 edid = drm_property_create(dev, DRM_MODE_PROP_BLOB |
       DRM_MODE_PROP_IMMUTABLE,
       "EDID", 0);
 dev->mode_config.edid_property = edid;

 dpms = drm_property_create_enum(dev, 0,
       "DPMS", drm_dpms_enum_list,
       ARRAY_SIZE(drm_dpms_enum_list));
 dev->mode_config.dpms_property = dpms;

 return 0;
}
