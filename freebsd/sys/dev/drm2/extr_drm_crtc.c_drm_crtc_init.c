
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mutex; int num_crtc; int crtc_list; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_crtc_funcs {int dummy; } ;
struct TYPE_4__ {int * properties; } ;
struct drm_crtc {int invert_dimensions; int head; int properties; TYPE_2__ base; struct drm_crtc_funcs const* funcs; struct drm_device* dev; } ;


 int DRM_MODE_OBJECT_CRTC ;
 int drm_mode_object_get (struct drm_device*,TYPE_2__*,int ) ;
 int list_add_tail (int *,int *) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int drm_crtc_init(struct drm_device *dev, struct drm_crtc *crtc,
     const struct drm_crtc_funcs *funcs)
{
 int ret;

 crtc->dev = dev;
 crtc->funcs = funcs;
 crtc->invert_dimensions = 0;

 sx_xlock(&dev->mode_config.mutex);

 ret = drm_mode_object_get(dev, &crtc->base, DRM_MODE_OBJECT_CRTC);
 if (ret)
  goto out;

 crtc->base.properties = &crtc->properties;

 list_add_tail(&crtc->head, &dev->mode_config.crtc_list);
 dev->mode_config.num_crtc++;

 out:
 sx_xunlock(&dev->mode_config.mutex);

 return ret;
}
