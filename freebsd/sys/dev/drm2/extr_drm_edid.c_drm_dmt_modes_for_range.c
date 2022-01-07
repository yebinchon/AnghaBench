
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edid {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;
struct detailed_timing {int dummy; } ;


 int * drm_dmt_modes ;
 struct drm_display_mode* drm_mode_duplicate (struct drm_device*,int *) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 int drm_num_dmt_modes ;
 scalar_t__ mode_in_range (int *,struct edid*,struct detailed_timing*) ;
 scalar_t__ valid_inferred_mode (struct drm_connector*,int *) ;

__attribute__((used)) static int
drm_dmt_modes_for_range(struct drm_connector *connector, struct edid *edid,
   struct detailed_timing *timing)
{
 int i, modes = 0;
 struct drm_display_mode *newmode;
 struct drm_device *dev = connector->dev;

 for (i = 0; i < drm_num_dmt_modes; i++) {
  if (mode_in_range(drm_dmt_modes + i, edid, timing) &&
      valid_inferred_mode(connector, drm_dmt_modes + i)) {
   newmode = drm_mode_duplicate(dev, &drm_dmt_modes[i]);
   if (newmode) {
    drm_mode_probed_add(connector, newmode);
    modes++;
   }
  }
 }

 return modes;
}
