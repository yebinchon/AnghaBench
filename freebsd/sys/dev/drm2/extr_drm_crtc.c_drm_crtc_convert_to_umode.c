
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_modeinfo {scalar_t__ hdisplay; scalar_t__ hsync_start; scalar_t__ hsync_end; scalar_t__ htotal; scalar_t__ hskew; scalar_t__ vdisplay; scalar_t__ vsync_start; scalar_t__ vsync_end; scalar_t__ vtotal; scalar_t__ vscan; scalar_t__* name; int type; int flags; int vrefresh; int clock; } ;
struct drm_display_mode {scalar_t__ hdisplay; scalar_t__ hsync_start; scalar_t__ hsync_end; scalar_t__ htotal; scalar_t__ hskew; scalar_t__ vdisplay; scalar_t__ vsync_start; scalar_t__ vsync_end; scalar_t__ vtotal; scalar_t__ vscan; int name; int type; int flags; int vrefresh; int clock; } ;


 int DRM_DISPLAY_MODE_LEN ;
 int DRM_WARNING (char*) ;
 scalar_t__ USHRT_MAX ;
 int strncpy (scalar_t__*,int ,int) ;

__attribute__((used)) static void drm_crtc_convert_to_umode(struct drm_mode_modeinfo *out,
          const struct drm_display_mode *in)
{
 if (in->hdisplay > USHRT_MAX || in->hsync_start > USHRT_MAX ||
      in->hsync_end > USHRT_MAX || in->htotal > USHRT_MAX ||
      in->hskew > USHRT_MAX || in->vdisplay > USHRT_MAX ||
      in->vsync_start > USHRT_MAX || in->vsync_end > USHRT_MAX ||
      in->vtotal > USHRT_MAX || in->vscan > USHRT_MAX)
  DRM_WARNING("timing values too large for mode info\n");

 out->clock = in->clock;
 out->hdisplay = in->hdisplay;
 out->hsync_start = in->hsync_start;
 out->hsync_end = in->hsync_end;
 out->htotal = in->htotal;
 out->hskew = in->hskew;
 out->vdisplay = in->vdisplay;
 out->vsync_start = in->vsync_start;
 out->vsync_end = in->vsync_end;
 out->vtotal = in->vtotal;
 out->vscan = in->vscan;
 out->vrefresh = in->vrefresh;
 out->flags = in->flags;
 out->type = in->type;
 strncpy(out->name, in->name, DRM_DISPLAY_MODE_LEN);
 out->name[DRM_DISPLAY_MODE_LEN-1] = 0;
}
