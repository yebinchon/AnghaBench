
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ tp_col; } ;
struct TYPE_13__ {scalar_t__ tp_col; } ;
struct TYPE_16__ {TYPE_3__ tr_end; TYPE_2__ tr_begin; } ;
typedef TYPE_5__ term_rect_t ;
struct TYPE_17__ {int ta_bgcolor; } ;
typedef TYPE_6__ teken_attr_t ;
struct vt_window {int vw_flags; int vw_buf; int vw_draw_area; TYPE_1__* vw_terminal; struct vt_font* vw_font; } ;
struct vt_font {int dummy; } ;
struct vt_device {int vd_flags; int vd_mshown; scalar_t__ vd_mx; scalar_t__ vd_mx_drawn; scalar_t__ vd_my; scalar_t__ vd_my_drawn; TYPE_4__* vd_driver; struct vt_window* vd_curwindow; } ;
struct TYPE_15__ {int (* vd_bitblt_text ) (struct vt_device*,struct vt_window*,TYPE_5__*) ;int (* vd_invalidate_text ) (struct vt_device*,TYPE_5__*) ;} ;
struct TYPE_12__ {int tm_emulator; } ;


 int VDF_INVALID ;
 int VDF_MOUSECURSOR ;
 int VDF_SPLASH ;
 int VDF_SUSPENDED ;
 int VDF_TEXTMODE ;
 int VWF_BUSY ;
 int VWF_MOUSE_HIDE ;
 int kdb_active ;
 int * panicstr ;
 int stub1 (struct vt_device*,TYPE_5__*) ;
 int stub2 (struct vt_device*,struct vt_window*,TYPE_5__*) ;
 TYPE_6__* teken_get_curattr (int *) ;
 scalar_t__ vt_draw_logo_cpus ;
 int vt_mark_mouse_position_as_dirty (struct vt_device*,int) ;
 int vt_set_border (struct vt_device*,int *,int ) ;
 int vt_termrect (struct vt_device*,struct vt_font*,TYPE_5__*) ;
 int vtbuf_lock (int *) ;
 int vtbuf_undirty (int *,TYPE_5__*) ;
 int vtbuf_unlock (int *) ;
 int vtterm_draw_cpu_logos (struct vt_device*) ;

__attribute__((used)) static int
vt_flush(struct vt_device *vd)
{
 struct vt_window *vw;
 struct vt_font *vf;
 term_rect_t tarea;

 int cursor_was_shown, cursor_moved;


 vw = vd->vd_curwindow;
 if (vw == ((void*)0))
  return (0);

 if (vd->vd_flags & VDF_SPLASH || vw->vw_flags & VWF_BUSY)
  return (0);

 vf = vw->vw_font;
 if (((vd->vd_flags & VDF_TEXTMODE) == 0) && (vf == ((void*)0)))
  return (0);

 vtbuf_lock(&vw->vw_buf);


 cursor_was_shown = vd->vd_mshown;
 cursor_moved = (vd->vd_mx != vd->vd_mx_drawn ||
     vd->vd_my != vd->vd_my_drawn);


 if ((vd->vd_flags & VDF_MOUSECURSOR) &&
     !(vw->vw_flags & VWF_MOUSE_HIDE) &&
     !kdb_active && panicstr == ((void*)0)) {
  vd->vd_mshown = 1;
 } else {
  vd->vd_mshown = 0;
 }





 if (cursor_was_shown != vd->vd_mshown ||
     (vd->vd_mshown && cursor_moved))
  vt_mark_mouse_position_as_dirty(vd, 1);






 vd->vd_mx_drawn = vd->vd_mx;
 vd->vd_my_drawn = vd->vd_my;





 if (vd->vd_mshown && cursor_moved)
  vt_mark_mouse_position_as_dirty(vd, 1);


 vtbuf_undirty(&vw->vw_buf, &tarea);


 if (vd->vd_flags & (VDF_INVALID | VDF_SUSPENDED)) {
  const teken_attr_t *a;

  vd->vd_flags &= ~VDF_INVALID;

  a = teken_get_curattr(&vw->vw_terminal->tm_emulator);
  vt_set_border(vd, &vw->vw_draw_area, a->ta_bgcolor);
  vt_termrect(vd, vf, &tarea);
  if (vd->vd_driver->vd_invalidate_text)
   vd->vd_driver->vd_invalidate_text(vd, &tarea);
  if (vt_draw_logo_cpus)
   vtterm_draw_cpu_logos(vd);
 }

 if (tarea.tr_begin.tp_col < tarea.tr_end.tp_col) {
  vd->vd_driver->vd_bitblt_text(vd, vw, &tarea);
  vtbuf_unlock(&vw->vw_buf);
  return (1);
 }

 vtbuf_unlock(&vw->vw_buf);
 return (0);
}
