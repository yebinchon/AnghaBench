
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tp_col; int tp_row; } ;
typedef TYPE_1__ term_pos_t ;
struct vt_font {int vf_width; int vf_height; } ;
struct vt_device {int vd_width; int vd_height; } ;


 scalar_t__ vt_draw_logo_cpus ;
 scalar_t__ vt_logo_sprite_height ;

void
vt_termsize(struct vt_device *vd, struct vt_font *vf, term_pos_t *size)
{

 size->tp_row = vd->vd_height;
 if (vt_draw_logo_cpus)
  size->tp_row -= vt_logo_sprite_height;
 size->tp_col = vd->vd_width;
 if (vf != ((void*)0)) {
  size->tp_row /= vf->vf_height;
  size->tp_col /= vf->vf_width;
 }
}
