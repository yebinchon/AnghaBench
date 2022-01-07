
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int flags; int hdisplay; int vdisplay; int name; } ;


 int DRM_DISPLAY_MODE_LEN ;
 int DRM_MODE_FLAG_INTERLACE ;
 int snprintf (int ,int ,char*,int,int,char*) ;

void drm_mode_set_name(struct drm_display_mode *mode)
{
 bool interlaced = !!(mode->flags & DRM_MODE_FLAG_INTERLACE);

 snprintf(mode->name, DRM_DISPLAY_MODE_LEN, "%dx%d%s",
   mode->hdisplay, mode->vdisplay,
   interlaced ? "i" : "");
}
