
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_mode_object {int dummy; } ;
struct drm_mode_fb_cmd {scalar_t__ handle; int pitch; int bpp; int depth; int width; int height; int fb_id; } ;
struct drm_framebuffer {TYPE_1__* funcs; int * pitches; int bits_per_pixel; int depth; int width; int height; } ;
struct drm_file {int dummy; } ;
struct TYPE_4__ {int mutex; } ;
struct drm_device {TYPE_2__ mode_config; } ;
struct TYPE_3__ {int (* create_handle ) (struct drm_framebuffer*,struct drm_file*,scalar_t__*) ;} ;


 int DRIVER_MODESET ;
 int DRM_MODE_OBJECT_FB ;
 int EINVAL ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 struct drm_mode_object* drm_mode_object_find (struct drm_device*,int ,int ) ;
 struct drm_framebuffer* obj_to_fb (struct drm_mode_object*) ;
 int stub1 (struct drm_framebuffer*,struct drm_file*,scalar_t__*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int drm_mode_getfb(struct drm_device *dev,
     void *data, struct drm_file *file_priv)
{
 struct drm_mode_fb_cmd *r = data;
 struct drm_mode_object *obj;
 struct drm_framebuffer *fb;
 int ret = 0;

 if (!drm_core_check_feature(dev, DRIVER_MODESET))
  return -EINVAL;

 sx_xlock(&dev->mode_config.mutex);
 obj = drm_mode_object_find(dev, r->fb_id, DRM_MODE_OBJECT_FB);
 if (!obj) {
  ret = -EINVAL;
  goto out;
 }
 fb = obj_to_fb(obj);

 r->height = fb->height;
 r->width = fb->width;
 r->depth = fb->depth;
 r->bpp = fb->bits_per_pixel;
 r->pitch = fb->pitches[0];
 r->handle = 0;
 fb->funcs->create_handle(fb, file_priv, &r->handle);

out:
 sx_xunlock(&dev->mode_config.mutex);
 return ret;
}
