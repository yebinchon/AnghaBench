
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_framebuffer {int head; int base; struct drm_device* dev; } ;
struct TYPE_2__ {int num_fb; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int drm_mode_object_put (struct drm_device*,int *) ;
 int list_del (int *) ;

void drm_framebuffer_cleanup(struct drm_framebuffer *fb)
{
 struct drm_device *dev = fb->dev;







 drm_mode_object_put(dev, &fb->base);
 list_del(&fb->head);
 dev->mode_config.num_fb--;
}
