
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int tp_row; unsigned int tp_col; } ;
struct TYPE_5__ {unsigned int tp_row; unsigned int tp_col; } ;
struct TYPE_7__ {TYPE_2__ tr_end; TYPE_1__ tr_begin; } ;
typedef TYPE_3__ term_rect_t ;
struct vt_device {scalar_t__* vd_drawnbg; scalar_t__* vd_drawnfg; scalar_t__* vd_drawn; } ;


 unsigned int PIXEL_WIDTH (int ) ;
 int VT_FB_MAX_WIDTH ;

void
vga_invalidate_text(struct vt_device *vd, const term_rect_t *area)
{
 unsigned int col, row;
 size_t z;

 for (row = area->tr_begin.tp_row; row < area->tr_end.tp_row; ++row) {
  for (col = area->tr_begin.tp_col;
      col < area->tr_end.tp_col;
      ++col) {
   z = row * PIXEL_WIDTH(VT_FB_MAX_WIDTH) + col;
   if (vd->vd_drawn)
    vd->vd_drawn[z] = 0;
   if (vd->vd_drawnfg)
    vd->vd_drawnfg[z] = 0;
   if (vd->vd_drawnbg)
    vd->vd_drawnbg[z] = 0;
  }
 }
}
