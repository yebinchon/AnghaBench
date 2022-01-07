
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {unsigned int tp_col; unsigned int tp_row; } ;
struct TYPE_8__ {unsigned int tp_col; unsigned int tp_row; } ;
struct TYPE_13__ {TYPE_2__ tr_end; TYPE_1__ tr_begin; } ;
typedef TYPE_6__ term_rect_t ;
struct TYPE_11__ {int tp_row; int tp_col; } ;
struct TYPE_10__ {unsigned int tp_col; unsigned int tp_row; } ;
struct TYPE_12__ {TYPE_4__ tr_end; TYPE_3__ tr_begin; } ;
struct vt_window {TYPE_5__ vw_draw_area; struct vt_font* vw_font; } ;
struct vt_font {unsigned int vf_width; unsigned int vf_height; } ;
struct vt_device {int dummy; } ;


 unsigned int VT_VGA_PIXELS_BLOCK ;
 scalar_t__ howmany (unsigned int,unsigned int) ;
 unsigned int min (unsigned int,int ) ;
 int vga_bitblt_one_text_pixels_block (struct vt_device*,struct vt_window const*,unsigned int,unsigned int) ;

__attribute__((used)) static void
vga_bitblt_text_gfxmode(struct vt_device *vd, const struct vt_window *vw,
    const term_rect_t *area)
{
 const struct vt_font *vf;
 unsigned int col, row;
 unsigned int x1, y1, x2, y2, x, y;

 vf = vw->vw_font;
 col = area->tr_begin.tp_col;
 row = area->tr_begin.tp_row;
 x1 = (int)((col * vf->vf_width + vw->vw_draw_area.tr_begin.tp_col)
      / VT_VGA_PIXELS_BLOCK)
     * VT_VGA_PIXELS_BLOCK;
 y1 = row * vf->vf_height + vw->vw_draw_area.tr_begin.tp_row;
 col = area->tr_end.tp_col;
 row = area->tr_end.tp_row;
 x2 = (int)howmany(col * vf->vf_width + vw->vw_draw_area.tr_begin.tp_col,
     VT_VGA_PIXELS_BLOCK)
     * VT_VGA_PIXELS_BLOCK;
 y2 = row * vf->vf_height + vw->vw_draw_area.tr_begin.tp_row;


 x2 = min(x2, vw->vw_draw_area.tr_end.tp_col);
 y2 = min(y2, vw->vw_draw_area.tr_end.tp_row);
 for (y = y1; y < y2; y += vf->vf_height) {
  for (x = x1; x < x2; x += VT_VGA_PIXELS_BLOCK) {
   vga_bitblt_one_text_pixels_block(vd, vw, x, y);
  }
 }
}
