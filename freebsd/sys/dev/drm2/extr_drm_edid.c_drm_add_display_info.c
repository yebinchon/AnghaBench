
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct edid {int width_cm; int height_cm; int revision; int input; int features; } ;
struct drm_display_info {int width_mm; int height_mm; int bpc; int cea_rev; int color_formats; } ;


 int DRM_COLOR_FORMAT_RGB444 ;
 int DRM_COLOR_FORMAT_YCRCB422 ;
 int DRM_COLOR_FORMAT_YCRCB444 ;






 int DRM_EDID_DIGITAL_DEPTH_MASK ;

 int DRM_EDID_FEATURE_RGB_YCRCB422 ;
 int DRM_EDID_FEATURE_RGB_YCRCB444 ;
 int DRM_EDID_INPUT_DIGITAL ;
 int EDID_CEA_YCRCB422 ;
 int EDID_CEA_YCRCB444 ;
 int* drm_find_cea_extension (struct edid*) ;

__attribute__((used)) static void drm_add_display_info(struct edid *edid,
     struct drm_display_info *info)
{
 u8 *edid_ext;

 info->width_mm = edid->width_cm * 10;
 info->height_mm = edid->height_cm * 10;


 info->bpc = 0;
 info->color_formats = 0;

 if (edid->revision < 3)
  return;

 if (!(edid->input & DRM_EDID_INPUT_DIGITAL))
  return;


 edid_ext = drm_find_cea_extension(edid);
 if (edid_ext) {
  info->cea_rev = edid_ext[1];


  info->color_formats = DRM_COLOR_FORMAT_RGB444;
  if (edid_ext[3] & EDID_CEA_YCRCB444)
   info->color_formats |= DRM_COLOR_FORMAT_YCRCB444;
  if (edid_ext[3] & EDID_CEA_YCRCB422)
   info->color_formats |= DRM_COLOR_FORMAT_YCRCB422;
 }


 if (edid->revision < 4)
  return;

 switch (edid->input & DRM_EDID_DIGITAL_DEPTH_MASK) {
 case 130:
  info->bpc = 6;
  break;
 case 129:
  info->bpc = 8;
  break;
 case 134:
  info->bpc = 10;
  break;
 case 133:
  info->bpc = 12;
  break;
 case 132:
  info->bpc = 14;
  break;
 case 131:
  info->bpc = 16;
  break;
 case 128:
 default:
  info->bpc = 0;
  break;
 }

 info->color_formats |= DRM_COLOR_FORMAT_RGB444;
 if (edid->features & DRM_EDID_FEATURE_RGB_YCRCB444)
  info->color_formats |= DRM_COLOR_FORMAT_YCRCB444;
 if (edid->features & DRM_EDID_FEATURE_RGB_YCRCB422)
  info->color_formats |= DRM_COLOR_FORMAT_YCRCB422;
}
