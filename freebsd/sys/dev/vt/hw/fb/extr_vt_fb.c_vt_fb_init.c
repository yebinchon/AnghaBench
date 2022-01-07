
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
typedef int term_color_t ;
struct vt_device {int vd_height; int vd_transpose; int vd_width; TYPE_1__* vd_driver; int vd_video_dev; struct fb_info* vd_softc; } ;
struct fb_info {int fb_height; int fb_stride; int fb_width; int fb_bpp; scalar_t__ fb_size; scalar_t__ fb_pbase; scalar_t__ fb_vbase; int fb_cmsize; int fb_cmap; int fb_flags; int fb_video_dev; } ;
struct TYPE_2__ {int (* vd_blank ) (struct vt_device*,int) ;} ;


 int CN_DEAD ;
 int CN_INTERNAL ;
 int FBTYPE_GET_BPP (struct fb_info*) ;
 int FB_FLAG_NOMMAP ;
 void* MIN (int ,int) ;
 int NBBY ;
 int TC_BLACK ;
 int TC_LIGHT ;
 int TC_WHITE ;
 scalar_t__ TUNABLE_INT_FETCH (char*,int*) ;
 int VT_FB_MAX_HEIGHT ;
 int VT_FB_MAX_WIDTH ;
 int stub1 (struct vt_device*,int) ;
 int vt_fb_init_cmap (int ,int ) ;
 int vt_fb_postswitch (struct vt_device*) ;

int
vt_fb_init(struct vt_device *vd)
{
 struct fb_info *info;
 u_int margin;
 int bg, err;
 term_color_t c;

 info = vd->vd_softc;
 vd->vd_height = MIN(VT_FB_MAX_HEIGHT, info->fb_height);
 margin = (info->fb_height - vd->vd_height) >> 1;
 vd->vd_transpose = margin * info->fb_stride;
 vd->vd_width = MIN(VT_FB_MAX_WIDTH, info->fb_width);
 margin = (info->fb_width - vd->vd_width) >> 1;
 vd->vd_transpose += margin * (info->fb_bpp / NBBY);
 vd->vd_video_dev = info->fb_video_dev;

 if (info->fb_size == 0)
  return (CN_DEAD);

 if (info->fb_pbase == 0 && info->fb_vbase == 0)
  info->fb_flags |= FB_FLAG_NOMMAP;

 if (info->fb_cmsize <= 0) {
  err = vt_fb_init_cmap(info->fb_cmap, FBTYPE_GET_BPP(info));
  if (err)
   return (CN_DEAD);
  info->fb_cmsize = 16;
 }

 c = TC_BLACK;
 if (TUNABLE_INT_FETCH("teken.bg_color", &bg) != 0) {
  if (bg == TC_WHITE)
   bg |= TC_LIGHT;
  c = bg;
 }

 vd->vd_driver->vd_blank(vd, c);


 vt_fb_postswitch(vd);

 return (CN_INTERNAL);
}
