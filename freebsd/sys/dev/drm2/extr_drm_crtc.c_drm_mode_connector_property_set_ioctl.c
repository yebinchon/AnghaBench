
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_obj_set_property {int obj_type; int obj_id; int prop_id; int value; } ;
struct drm_mode_connector_set_property {int connector_id; int prop_id; int value; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRM_MODE_OBJECT_CONNECTOR ;
 int drm_mode_obj_set_property_ioctl (struct drm_device*,struct drm_mode_obj_set_property*,struct drm_file*) ;

int drm_mode_connector_property_set_ioctl(struct drm_device *dev,
           void *data, struct drm_file *file_priv)
{
 struct drm_mode_connector_set_property *conn_set_prop = data;
 struct drm_mode_obj_set_property obj_set_prop = {
  .value = conn_set_prop->value,
  .prop_id = conn_set_prop->prop_id,
  .obj_id = conn_set_prop->connector_id,
  .obj_type = DRM_MODE_OBJECT_CONNECTOR
 };


 return drm_mode_obj_set_property_ioctl(dev, &obj_set_prop, file_priv);
}
