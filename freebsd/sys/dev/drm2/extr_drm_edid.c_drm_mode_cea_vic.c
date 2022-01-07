
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct drm_display_mode {int dummy; } ;


 scalar_t__ drm_mode_equal (struct drm_display_mode const*,int *) ;
 size_t drm_num_cea_modes ;
 int * edid_cea_modes ;

uint8_t drm_mode_cea_vic(const struct drm_display_mode *mode)
{
 uint8_t i;

 for (i = 0; i < drm_num_cea_modes; i++)
  if (drm_mode_equal(mode, &edid_cea_modes[i]))
   return i + 1;

 return 0;
}
