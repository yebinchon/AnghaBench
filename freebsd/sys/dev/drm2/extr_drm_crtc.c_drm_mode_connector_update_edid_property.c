
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct edid {int extensions; } ;
struct TYPE_5__ {int edid_property; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_connector {TYPE_3__* edid_blob_ptr; int base; struct drm_device* dev; } ;
struct TYPE_6__ {int id; } ;
struct TYPE_7__ {TYPE_2__ base; } ;


 int EDID_LENGTH ;
 int EINVAL ;
 int drm_object_property_set_value (int *,int ,int ) ;
 TYPE_3__* drm_property_create_blob (struct drm_device*,int,struct edid*) ;
 int drm_property_destroy_blob (struct drm_device*,TYPE_3__*) ;

int drm_mode_connector_update_edid_property(struct drm_connector *connector,
         struct edid *edid)
{
 struct drm_device *dev = connector->dev;
 int ret, size;

 if (connector->edid_blob_ptr)
  drm_property_destroy_blob(dev, connector->edid_blob_ptr);


 if (!edid) {
  connector->edid_blob_ptr = ((void*)0);
  ret = drm_object_property_set_value(&connector->base, dev->mode_config.edid_property, 0);
  return ret;
 }

 size = EDID_LENGTH * (1 + edid->extensions);
 connector->edid_blob_ptr = drm_property_create_blob(connector->dev,
           size, edid);
 if (!connector->edid_blob_ptr)
  return -EINVAL;

 ret = drm_object_property_set_value(&connector->base,
            dev->mode_config.edid_property,
            connector->edid_blob_ptr->base.id);

 return ret;
}
