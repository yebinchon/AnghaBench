
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {int head; int base; struct drm_device* dev; } ;
struct TYPE_2__ {int mutex; int num_encoder; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int drm_mode_object_put (struct drm_device*,int *) ;
 int list_del (int *) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

void drm_encoder_cleanup(struct drm_encoder *encoder)
{
 struct drm_device *dev = encoder->dev;
 sx_xlock(&dev->mode_config.mutex);
 drm_mode_object_put(dev, &encoder->base);
 list_del(&encoder->head);
 dev->mode_config.num_encoder--;
 sx_xunlock(&dev->mode_config.mutex);
}
