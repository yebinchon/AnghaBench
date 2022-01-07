
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder_funcs {int dummy; } ;
struct drm_encoder {int encoder_type; int head; struct drm_encoder_funcs const* funcs; struct drm_device* dev; int base; } ;
struct TYPE_2__ {int mutex; int num_encoder; int encoder_list; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int DRM_MODE_OBJECT_ENCODER ;
 int drm_mode_object_get (struct drm_device*,int *,int ) ;
 int list_add_tail (int *,int *) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int drm_encoder_init(struct drm_device *dev,
        struct drm_encoder *encoder,
        const struct drm_encoder_funcs *funcs,
        int encoder_type)
{
 int ret;

 sx_xlock(&dev->mode_config.mutex);

 ret = drm_mode_object_get(dev, &encoder->base, DRM_MODE_OBJECT_ENCODER);
 if (ret)
  goto out;

 encoder->dev = dev;
 encoder->encoder_type = encoder_type;
 encoder->funcs = funcs;

 list_add_tail(&encoder->head, &dev->mode_config.encoder_list);
 dev->mode_config.num_encoder++;

 out:
 sx_xunlock(&dev->mode_config.mutex);

 return ret;
}
