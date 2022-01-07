
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct drm_mode_object {int dummy; } ;
struct drm_mode_get_encoder {int possible_clones; int possible_crtcs; int encoder_id; int encoder_type; scalar_t__ crtc_id; } ;
struct drm_file {int dummy; } ;
struct TYPE_7__ {int id; } ;
struct drm_encoder {int possible_clones; int possible_crtcs; TYPE_3__ base; int encoder_type; TYPE_2__* crtc; } ;
struct TYPE_8__ {int mutex; } ;
struct drm_device {TYPE_4__ mode_config; } ;
struct TYPE_5__ {scalar_t__ id; } ;
struct TYPE_6__ {TYPE_1__ base; } ;


 int DRIVER_MODESET ;
 int DRM_MODE_OBJECT_ENCODER ;
 int EINVAL ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 struct drm_mode_object* drm_mode_object_find (struct drm_device*,int ,int ) ;
 struct drm_encoder* obj_to_encoder (struct drm_mode_object*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int drm_mode_getencoder(struct drm_device *dev, void *data,
   struct drm_file *file_priv)
{
 struct drm_mode_get_encoder *enc_resp = data;
 struct drm_mode_object *obj;
 struct drm_encoder *encoder;
 int ret = 0;

 if (!drm_core_check_feature(dev, DRIVER_MODESET))
  return -EINVAL;

 sx_xlock(&dev->mode_config.mutex);
 obj = drm_mode_object_find(dev, enc_resp->encoder_id,
       DRM_MODE_OBJECT_ENCODER);
 if (!obj) {
  ret = -EINVAL;
  goto out;
 }
 encoder = obj_to_encoder(obj);

 if (encoder->crtc)
  enc_resp->crtc_id = encoder->crtc->base.id;
 else
  enc_resp->crtc_id = 0;
 enc_resp->encoder_type = encoder->encoder_type;
 enc_resp->encoder_id = encoder->base.id;
 enc_resp->possible_crtcs = encoder->possible_crtcs;
 enc_resp->possible_clones = encoder->possible_clones;

out:
 sx_xunlock(&dev->mode_config.mutex);
 return ret;
}
