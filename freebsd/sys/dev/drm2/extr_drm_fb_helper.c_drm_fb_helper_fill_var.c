
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vt_kms_softc {struct drm_fb_helper* fb_helper; } ;
struct fb_info {scalar_t__ fb_priv; int fb_depth; int fb_height; int fb_width; int fb_name; } ;
struct drm_framebuffer {int bits_per_pixel; int height; int width; } ;
struct drm_fb_helper {TYPE_1__* dev; struct drm_framebuffer* fb; } ;
struct TYPE_2__ {int dev; } ;


 int device_get_nameunit (int ) ;

void drm_fb_helper_fill_var(struct fb_info *info, struct drm_fb_helper *fb_helper,
       uint32_t fb_width, uint32_t fb_height)
{
 struct drm_framebuffer *fb = fb_helper->fb;
 struct vt_kms_softc *sc;

 info->fb_name = device_get_nameunit(fb_helper->dev->dev);
 info->fb_width = fb->width;
 info->fb_height = fb->height;
 info->fb_depth = fb->bits_per_pixel;

 sc = (struct vt_kms_softc *)info->fb_priv;
 sc->fb_helper = fb_helper;
}
