
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {unsigned int tp_row; unsigned int tp_col; } ;
struct TYPE_9__ {unsigned int tp_row; unsigned int tp_col; } ;
struct TYPE_14__ {TYPE_2__ tr_end; TYPE_1__ tr_begin; } ;
typedef TYPE_6__ term_rect_t ;
typedef int term_color_t ;
typedef int term_char_t ;
struct TYPE_12__ {unsigned int tp_col; unsigned int tp_row; } ;
struct TYPE_13__ {TYPE_4__ tr_begin; } ;
struct vt_window {TYPE_5__ vw_draw_area; int vw_buf; struct vt_font* vw_font; } ;
struct vt_font {unsigned int vf_width; unsigned int vf_height; } ;
struct vt_device {unsigned int vd_mx_drawn; unsigned int vd_my_drawn; int vd_mcursor_bg; int vd_mcursor_fg; TYPE_3__* vd_mcursor; int vd_mshown; } ;
struct TYPE_11__ {unsigned int width; unsigned int height; int * mask; int const* map; } ;


 int VTBUF_GET_FIELD (int *,unsigned int,unsigned int) ;
 int VTBUF_ISCURSOR (int *,unsigned int,unsigned int) ;
 int ofwfb_bitblt_bitmap (struct vt_device*,struct vt_window const*,int const*,int *,unsigned int,unsigned int,unsigned int,unsigned int,int ,int ) ;
 int vt_determine_colors (int ,int ,int *,int *) ;
 scalar_t__ vt_is_cursor_in_area (struct vt_device*,TYPE_6__*) ;
 int * vtfont_lookup (struct vt_font*,int ) ;

void
ofwfb_bitblt_text(struct vt_device *vd, const struct vt_window *vw,
    const term_rect_t *area)
{
 unsigned int col, row, x, y;
 struct vt_font *vf;
 term_char_t c;
 term_color_t fg, bg;
 const uint8_t *pattern;

 vf = vw->vw_font;

 for (row = area->tr_begin.tp_row; row < area->tr_end.tp_row; ++row) {
  for (col = area->tr_begin.tp_col; col < area->tr_end.tp_col;
      ++col) {
   x = col * vf->vf_width +
       vw->vw_draw_area.tr_begin.tp_col;
   y = row * vf->vf_height +
       vw->vw_draw_area.tr_begin.tp_row;

   c = VTBUF_GET_FIELD(&vw->vw_buf, row, col);
   pattern = vtfont_lookup(vf, c);
   vt_determine_colors(c,
       VTBUF_ISCURSOR(&vw->vw_buf, row, col), &fg, &bg);

   ofwfb_bitblt_bitmap(vd, vw,
       pattern, ((void*)0), vf->vf_width, vf->vf_height,
       x, y, fg, bg);
  }
 }


 if (!vd->vd_mshown)
  return;

 term_rect_t drawn_area;

 drawn_area.tr_begin.tp_col = area->tr_begin.tp_col * vf->vf_width;
 drawn_area.tr_begin.tp_row = area->tr_begin.tp_row * vf->vf_height;
 drawn_area.tr_end.tp_col = area->tr_end.tp_col * vf->vf_width;
 drawn_area.tr_end.tp_row = area->tr_end.tp_row * vf->vf_height;

 if (vt_is_cursor_in_area(vd, &drawn_area)) {
  ofwfb_bitblt_bitmap(vd, vw,
      vd->vd_mcursor->map, vd->vd_mcursor->mask,
      vd->vd_mcursor->width, vd->vd_mcursor->height,
      vd->vd_mx_drawn + vw->vw_draw_area.tr_begin.tp_col,
      vd->vd_my_drawn + vw->vw_draw_area.tr_begin.tp_row,
      vd->vd_mcursor_fg, vd->vd_mcursor_bg);
 }

}
