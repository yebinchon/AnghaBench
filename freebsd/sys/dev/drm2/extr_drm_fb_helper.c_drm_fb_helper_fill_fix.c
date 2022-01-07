
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fb_info {int fb_stride; } ;



void drm_fb_helper_fill_fix(struct fb_info *info, uint32_t pitch,
       uint32_t depth)
{
 info->fb_stride = pitch;

 return;
}
