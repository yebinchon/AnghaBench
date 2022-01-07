
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {int ws_col; int ws_row; int ws_xpixel; int ws_ypixel; } ;
struct vt_font {int vf_width; int vf_height; } ;
struct vt_device {int vd_width; int vd_height; } ;


 scalar_t__ vt_draw_logo_cpus ;
 scalar_t__ vt_logo_sprite_height ;

void
vt_winsize(struct vt_device *vd, struct vt_font *vf, struct winsize *size)
{

 size->ws_ypixel = vd->vd_height;
 if (vt_draw_logo_cpus)
  size->ws_ypixel -= vt_logo_sprite_height;
 size->ws_row = size->ws_ypixel;
 size->ws_col = size->ws_xpixel = vd->vd_width;
 if (vf != ((void*)0)) {
  size->ws_row /= vf->vf_height;
  size->ws_col /= vf->vf_width;
 }
}
