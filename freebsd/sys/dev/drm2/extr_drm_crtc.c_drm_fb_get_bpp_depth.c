
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int DRM_DEBUG_KMS (char*) ;
void drm_fb_get_bpp_depth(uint32_t format, unsigned int *depth,
     int *bpp)
{
 switch (format) {
 case 143:
 case 142:
 case 152:
  *depth = 8;
  *bpp = 8;
  break;
 case 130:
 case 133:
 case 135:
 case 145:
 case 155:
 case 158:
 case 138:
 case 148:
  *depth = 15;
  *bpp = 16;
  break;
 case 141:
 case 151:
  *depth = 16;
  *bpp = 16;
  break;
 case 140:
 case 150:
  *depth = 24;
  *bpp = 24;
  break;
 case 128:
 case 131:
 case 134:
 case 144:
  *depth = 24;
  *bpp = 32;
  break;
 case 129:
 case 132:
 case 136:
 case 146:
 case 154:
 case 157:
 case 139:
 case 149:
  *depth = 30;
  *bpp = 32;
  break;
 case 153:
 case 156:
 case 137:
 case 147:
  *depth = 32;
  *bpp = 32;
  break;
 default:
  DRM_DEBUG_KMS("unsupported pixel format\n");
  *depth = 0;
  *bpp = 0;
  break;
 }
}
