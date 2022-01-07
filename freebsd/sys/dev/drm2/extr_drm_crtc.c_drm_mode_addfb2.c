
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_mode_fb_cmd2 {int flags; int fb_id; int height; int width; } ;
struct drm_mode_config {int mutex; TYPE_1__* funcs; int max_height; int min_height; int max_width; int min_width; } ;
struct TYPE_4__ {int id; } ;
struct drm_framebuffer {TYPE_2__ base; int filp_head; } ;
struct drm_file {int fbs; } ;
struct drm_device {struct drm_mode_config mode_config; } ;
struct TYPE_3__ {int (* fb_create ) (struct drm_device*,struct drm_file*,struct drm_mode_fb_cmd2*,struct drm_framebuffer**) ;} ;


 int DRIVER_MODESET ;
 int DRM_DEBUG_KMS (char*,...) ;
 int DRM_MODE_FB_INTERLACED ;
 int EINVAL ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int framebuffer_check (struct drm_mode_fb_cmd2*) ;
 int list_add (int *,int *) ;
 int stub1 (struct drm_device*,struct drm_file*,struct drm_mode_fb_cmd2*,struct drm_framebuffer**) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int drm_mode_addfb2(struct drm_device *dev,
      void *data, struct drm_file *file_priv)
{
 struct drm_mode_fb_cmd2 *r = data;
 struct drm_mode_config *config = &dev->mode_config;
 struct drm_framebuffer *fb;
 int ret;

 if (!drm_core_check_feature(dev, DRIVER_MODESET))
  return -EINVAL;

 if (r->flags & ~DRM_MODE_FB_INTERLACED) {
  DRM_DEBUG_KMS("bad framebuffer flags 0x%08x\n", r->flags);
  return -EINVAL;
 }

 if ((config->min_width > r->width) || (r->width > config->max_width)) {
  DRM_DEBUG_KMS("bad framebuffer width %d, should be >= %d && <= %d\n",
     r->width, config->min_width, config->max_width);
  return -EINVAL;
 }
 if ((config->min_height > r->height) || (r->height > config->max_height)) {
  DRM_DEBUG_KMS("bad framebuffer height %d, should be >= %d && <= %d\n",
     r->height, config->min_height, config->max_height);
  return -EINVAL;
 }

 ret = framebuffer_check(r);
 if (ret)
  return ret;

 sx_xlock(&dev->mode_config.mutex);

 ret = dev->mode_config.funcs->fb_create(dev, file_priv, r, &fb);
 if (ret != 0) {
  DRM_DEBUG_KMS("could not create framebuffer\n");
  goto out;
 }

 r->fb_id = fb->base.id;
 list_add(&fb->filp_head, &file_priv->fbs);
 DRM_DEBUG_KMS("[FB:%d]\n", fb->base.id);

out:
 sx_xunlock(&dev->mode_config.mutex);
 return ret;
}
