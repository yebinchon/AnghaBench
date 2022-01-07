
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_mode_object {int dummy; } ;
struct drm_mode_modeinfo {int dummy; } ;
struct drm_mode_mode_cmd {int connector_id; struct drm_mode_modeinfo mode; } ;
struct drm_file {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_2__ {int mutex; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_connector {int dummy; } ;


 int DRIVER_MODESET ;
 int DRM_DEBUG_KMS (char*) ;
 int DRM_MODE_OBJECT_CONNECTOR ;
 int EINVAL ;
 int ENOMEM ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int drm_crtc_convert_umode (struct drm_display_mode*,struct drm_mode_modeinfo*) ;
 int drm_mode_attachmode (struct drm_device*,struct drm_connector*,struct drm_display_mode*) ;
 struct drm_display_mode* drm_mode_create (struct drm_device*) ;
 int drm_mode_destroy (struct drm_device*,struct drm_display_mode*) ;
 struct drm_mode_object* drm_mode_object_find (struct drm_device*,int ,int ) ;
 struct drm_connector* obj_to_connector (struct drm_mode_object*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int drm_mode_attachmode_ioctl(struct drm_device *dev,
         void *data, struct drm_file *file_priv)
{
 struct drm_mode_mode_cmd *mode_cmd = data;
 struct drm_connector *connector;
 struct drm_display_mode *mode;
 struct drm_mode_object *obj;
 struct drm_mode_modeinfo *umode = &mode_cmd->mode;
 int ret;

 if (!drm_core_check_feature(dev, DRIVER_MODESET))
  return -EINVAL;

 sx_xlock(&dev->mode_config.mutex);

 obj = drm_mode_object_find(dev, mode_cmd->connector_id, DRM_MODE_OBJECT_CONNECTOR);
 if (!obj) {
  ret = -EINVAL;
  goto out;
 }
 connector = obj_to_connector(obj);

 mode = drm_mode_create(dev);
 if (!mode) {
  ret = -ENOMEM;
  goto out;
 }

 ret = drm_crtc_convert_umode(mode, umode);
 if (ret) {
  DRM_DEBUG_KMS("Invalid mode\n");
  drm_mode_destroy(dev, mode);
  goto out;
 }

 drm_mode_attachmode(dev, connector, mode);
out:
 sx_xunlock(&dev->mode_config.mutex);
 return ret;
}
