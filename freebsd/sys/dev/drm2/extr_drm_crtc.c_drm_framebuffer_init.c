
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_framebuffer_funcs {int dummy; } ;
struct drm_framebuffer {int head; struct drm_framebuffer_funcs const* funcs; struct drm_device* dev; int base; int refcount; } ;
struct TYPE_2__ {int fb_list; int num_fb; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int DRM_MODE_OBJECT_FB ;
 int drm_mode_object_get (struct drm_device*,int *,int ) ;
 int list_add (int *,int *) ;
 int refcount_init (int *,int) ;

int drm_framebuffer_init(struct drm_device *dev, struct drm_framebuffer *fb,
    const struct drm_framebuffer_funcs *funcs)
{
 int ret;

 refcount_init(&fb->refcount, 1);

 ret = drm_mode_object_get(dev, &fb->base, DRM_MODE_OBJECT_FB);
 if (ret)
  return ret;

 fb->dev = dev;
 fb->funcs = funcs;
 dev->mode_config.num_fb++;
 list_add(&fb->head, &dev->mode_config.fb_list);

 return 0;
}
