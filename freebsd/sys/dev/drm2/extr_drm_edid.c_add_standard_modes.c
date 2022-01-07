
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct edid {int revision; int * standard_timings; } ;
struct drm_display_mode {int dummy; } ;
struct drm_connector {int dummy; } ;
struct detailed_mode_closure {int modes; int member_4; int member_3; int member_2; struct edid* member_1; struct drm_connector* member_0; } ;


 int EDID_STD_TIMINGS ;
 int do_standard_modes ;
 int drm_for_each_detailed_block (int *,int ,struct detailed_mode_closure*) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 struct drm_display_mode* drm_mode_std (struct drm_connector*,struct edid*,int *,int ) ;
 scalar_t__ version_greater (struct edid*,int,int ) ;

__attribute__((used)) static int
add_standard_modes(struct drm_connector *connector, struct edid *edid)
{
 int i, modes = 0;
 struct detailed_mode_closure closure = {
  connector, edid, 0, 0, 0
 };

 for (i = 0; i < EDID_STD_TIMINGS; i++) {
  struct drm_display_mode *newmode;

  newmode = drm_mode_std(connector, edid,
           &edid->standard_timings[i],
           edid->revision);
  if (newmode) {
   drm_mode_probed_add(connector, newmode);
   modes++;
  }
 }

 if (version_greater(edid, 1, 0))
  drm_for_each_detailed_block((u8 *)edid, do_standard_modes,
         &closure);



 return modes + closure.modes;
}
