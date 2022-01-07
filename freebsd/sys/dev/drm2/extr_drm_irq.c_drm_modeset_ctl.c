
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_modeset_ctl {unsigned int crtc; int cmd; } ;
struct drm_file {int dummy; } ;
struct drm_device {unsigned int num_crtcs; } ;


 int DRIVER_MODESET ;
 int EINVAL ;


 scalar_t__ drm_core_check_feature (struct drm_device*,int ) ;
 int drm_vblank_post_modeset (struct drm_device*,unsigned int) ;
 int drm_vblank_pre_modeset (struct drm_device*,unsigned int) ;

int drm_modeset_ctl(struct drm_device *dev, void *data,
      struct drm_file *file_priv)
{
 struct drm_modeset_ctl *modeset = data;
 unsigned int crtc;


 if (!dev->num_crtcs)
  return 0;


 if (drm_core_check_feature(dev, DRIVER_MODESET))
  return 0;

 crtc = modeset->crtc;
 if (crtc >= dev->num_crtcs)
  return -EINVAL;

 switch (modeset->cmd) {
 case 128:
  drm_vblank_pre_modeset(dev, crtc);
  break;
 case 129:
  drm_vblank_post_modeset(dev, crtc);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
