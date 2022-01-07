
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int tp_col; int tp_row; } ;
struct TYPE_5__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
struct TYPE_7__ {TYPE_2__ tr_end; TYPE_1__ tr_begin; } ;
typedef TYPE_3__ term_rect_t ;
struct vt_font {int vf_width; int vf_height; } ;
struct vt_device {int vd_width; int vd_height; } ;


 scalar_t__ howmany (scalar_t__,int ) ;
 scalar_t__ vt_draw_logo_cpus ;
 scalar_t__ vt_logo_sprite_height ;

__attribute__((used)) static inline void
vt_termrect(struct vt_device *vd, struct vt_font *vf, term_rect_t *rect)
{

 rect->tr_begin.tp_row = rect->tr_begin.tp_col = 0;
 if (vt_draw_logo_cpus)
  rect->tr_begin.tp_row = vt_logo_sprite_height;

 rect->tr_end.tp_row = vd->vd_height;
 rect->tr_end.tp_col = vd->vd_width;

 if (vf != ((void*)0)) {
  rect->tr_begin.tp_row =
      howmany(rect->tr_begin.tp_row, vf->vf_height);

  rect->tr_end.tp_row /= vf->vf_height;
  rect->tr_end.tp_col /= vf->vf_width;
 }
}
