
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int vrefresh; unsigned int htotal; int vtotal; int clock; int flags; int vscan; } ;


 int DRM_MODE_FLAG_DBLSCAN ;
 int DRM_MODE_FLAG_INTERLACE ;

int drm_mode_vrefresh(const struct drm_display_mode *mode)
{
 int refresh = 0;
 unsigned int calc_val;

 if (mode->vrefresh > 0)
  refresh = mode->vrefresh;
 else if (mode->htotal > 0 && mode->vtotal > 0) {
  int vtotal;
  vtotal = mode->vtotal;

  calc_val = (mode->clock * 1000);
  calc_val /= mode->htotal;
  refresh = (calc_val + vtotal / 2) / vtotal;

  if (mode->flags & DRM_MODE_FLAG_INTERLACE)
   refresh *= 2;
  if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
   refresh /= 2;
  if (mode->vscan > 1)
   refresh /= mode->vscan;
 }
 return refresh;
}
