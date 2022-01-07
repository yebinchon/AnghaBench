
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int hdisplay; int vdisplay; int vtotal; int htotal; int hsync_end; int hsync_start; int vsync_start; int vsync_end; int clock; int flags; } ;
struct drm_device {int dummy; } ;


 int CVT_CLOCK_STEP ;
 int CVT_C_PRIME ;
 int CVT_HSYNC_PERCENTAGE ;
 int CVT_H_GRANULARITY ;
 int CVT_MARGIN_PERCENTAGE ;
 int CVT_MIN_VSYNC_BP ;
 int CVT_MIN_V_BPORCH ;
 int CVT_MIN_V_PORCH ;
 unsigned int CVT_M_PRIME ;
 int CVT_RB_H_BLANK ;
 int CVT_RB_H_SYNC ;
 int CVT_RB_MIN_VBLANK ;
 int CVT_RB_VFPORCH ;
 int DRM_MODE_FLAG_INTERLACE ;
 int DRM_MODE_FLAG_NHSYNC ;
 int DRM_MODE_FLAG_NVSYNC ;
 int DRM_MODE_FLAG_PHSYNC ;
 int DRM_MODE_FLAG_PVSYNC ;
 int HV_FACTOR ;
 struct drm_display_mode* drm_mode_create (struct drm_device*) ;
 int drm_mode_set_name (struct drm_display_mode*) ;

struct drm_display_mode *drm_cvt_mode(struct drm_device *dev, int hdisplay,
          int vdisplay, int vrefresh,
          bool reduced, bool interlaced, bool margins)
{
 struct drm_display_mode *drm_mode;
 unsigned int vfieldrate, hperiod;
 int hdisplay_rnd, hmargin, vdisplay_rnd, vmargin, vsync;
 int interlace;




 drm_mode = drm_mode_create(dev);
 if (!drm_mode)
  return ((void*)0);


 if (!vrefresh)
  vrefresh = 60;


 if (interlaced)
  vfieldrate = vrefresh * 2;
 else
  vfieldrate = vrefresh;


 hdisplay_rnd = hdisplay - (hdisplay % 8);


 hmargin = 0;
 if (margins) {
  hmargin = hdisplay_rnd * 18 / 1000;
  hmargin -= hmargin % 8;
 }

 drm_mode->hdisplay = hdisplay_rnd + 2 * hmargin;


 if (interlaced)
  vdisplay_rnd = vdisplay / 2;
 else
  vdisplay_rnd = vdisplay;


 vmargin = 0;
 if (margins)
  vmargin = vdisplay_rnd * 18 / 1000;

 drm_mode->vdisplay = vdisplay + 2 * vmargin;


 if (interlaced)
  interlace = 1;
 else
  interlace = 0;


 if (!(vdisplay % 3) && ((vdisplay * 4 / 3) == hdisplay))
  vsync = 4;
 else if (!(vdisplay % 9) && ((vdisplay * 16 / 9) == hdisplay))
  vsync = 5;
 else if (!(vdisplay % 10) && ((vdisplay * 16 / 10) == hdisplay))
  vsync = 6;
 else if (!(vdisplay % 4) && ((vdisplay * 5 / 4) == hdisplay))
  vsync = 7;
 else if (!(vdisplay % 9) && ((vdisplay * 15 / 9) == hdisplay))
  vsync = 7;
 else
  vsync = 10;

 if (!reduced) {




  int tmp1, tmp2;



  unsigned int hblank_percentage;
  int vsyncandback_porch, vback_porch, hblank;


  tmp1 = HV_FACTOR * 1000000 -
    550 * HV_FACTOR * vfieldrate;
  tmp2 = (vdisplay_rnd + 2 * vmargin + 3) * 2 +
    interlace;
  hperiod = tmp1 * 2 / (tmp2 * vfieldrate);

  tmp1 = 550 * HV_FACTOR / hperiod + 1;

  if (tmp1 < (vsync + 3))
   vsyncandback_porch = vsync + 3;
  else
   vsyncandback_porch = tmp1;

  vback_porch = vsyncandback_porch - vsync;
  drm_mode->vtotal = vdisplay_rnd + 2 * vmargin +
    vsyncandback_porch + 3;
  hblank_percentage = ((40 - 20) * 128 / 256 + 20) * HV_FACTOR - (600 * 128 / 256) *
     hperiod / 1000;

  if (hblank_percentage < 20 * HV_FACTOR)
   hblank_percentage = 20 * HV_FACTOR;
  hblank = drm_mode->hdisplay * hblank_percentage /
    (100 * HV_FACTOR - hblank_percentage);
  hblank -= hblank % (2 * 8);

  drm_mode->htotal = drm_mode->hdisplay + hblank;
  drm_mode->hsync_end = drm_mode->hdisplay + hblank / 2;
  drm_mode->hsync_start = drm_mode->hsync_end -
   (drm_mode->htotal * 8) / 100;
  drm_mode->hsync_start += 8 -
   drm_mode->hsync_start % 8;

  drm_mode->vsync_start = drm_mode->vdisplay + 3;
  drm_mode->vsync_end = drm_mode->vsync_start + vsync;
 } else {
  int vbilines;
  int tmp1, tmp2;

  tmp1 = HV_FACTOR * 1000000 -
   460 * HV_FACTOR * vfieldrate;
  tmp2 = vdisplay_rnd + 2 * vmargin;
  hperiod = tmp1 / (tmp2 * vfieldrate);

  vbilines = 460 * HV_FACTOR / hperiod + 1;

  if (vbilines < (3 + vsync + 6))
   vbilines = 3 + vsync + 6;

  drm_mode->vtotal = vdisplay_rnd + 2 * vmargin + vbilines;

  drm_mode->htotal = drm_mode->hdisplay + 160;

  drm_mode->hsync_end = drm_mode->hdisplay + 160 / 2;
  drm_mode->hsync_start = drm_mode->hsync_end - 32;

  drm_mode->vsync_start = drm_mode->vdisplay + 3;
  drm_mode->vsync_end = drm_mode->vsync_start + vsync;
 }

 drm_mode->clock = drm_mode->htotal * HV_FACTOR * 1000 / hperiod;
 drm_mode->clock -= drm_mode->clock % 250;


 if (interlaced) {
  drm_mode->vtotal *= 2;
  drm_mode->flags |= DRM_MODE_FLAG_INTERLACE;
 }

 drm_mode_set_name(drm_mode);
 if (reduced)
  drm_mode->flags |= (DRM_MODE_FLAG_PHSYNC |
     DRM_MODE_FLAG_NVSYNC);
 else
  drm_mode->flags |= (DRM_MODE_FLAG_PVSYNC |
     DRM_MODE_FLAG_NHSYNC);

 return drm_mode;
}
