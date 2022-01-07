
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct drm_display_mode {int flags; int type; int vtotal; int vsync_end; int vsync_start; int vdisplay; int htotal; int hsync_end; int hsync_start; int hdisplay; int clock; int vrefresh; int name; TYPE_1__ base; } ;


 int DRM_DEBUG_KMS (char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

void drm_mode_debug_printmodeline(const struct drm_display_mode *mode)
{
 DRM_DEBUG_KMS("Modeline %d:\"%s\" %d %d %d %d %d %d %d %d %d %d "
   "0x%x 0x%x\n",
  mode->base.id, mode->name, mode->vrefresh, mode->clock,
  mode->hdisplay, mode->hsync_start,
  mode->hsync_end, mode->htotal,
  mode->vdisplay, mode->vsync_start,
  mode->vsync_end, mode->vtotal, mode->type, mode->flags);
}
