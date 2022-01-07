
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int term_pos_t ;
struct winsize {int dummy; } ;
struct TYPE_6__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
struct TYPE_5__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
struct TYPE_7__ {TYPE_2__ tr_begin; TYPE_1__ tr_end; } ;
struct TYPE_8__ {int vb_cursor; int vb_history_size; } ;
struct vt_window {int vw_flags; TYPE_3__ vw_draw_area; struct vt_font* vw_font; TYPE_4__ vw_buf; struct terminal* vw_terminal; struct vt_device* vw_device; } ;
struct vt_font {int dummy; } ;
struct vt_device {int vd_flags; struct vt_window* vd_curwindow; void* vd_my; void* vd_mx; } ;
struct terminal {int dummy; } ;


 int EBUSY ;
 int VDF_INVALID ;
 int VT_LOCK (struct vt_device*) ;
 int VT_UNLOCK (struct vt_device*) ;
 int VWF_BUSY ;
 void* min (void*,scalar_t__) ;
 int terminal_mute (struct terminal*,int) ;
 int terminal_set_cursor (struct terminal*,int *) ;
 int terminal_set_winsize_blank (struct terminal*,struct winsize*,int ,int *) ;
 int vt_compute_drawable_area (struct vt_window*) ;
 int vt_resume_flush_timer (struct vt_window*,int ) ;
 int vt_termsize (struct vt_device*,struct vt_font*,int *) ;
 int vt_winsize (struct vt_device*,struct vt_font*,struct winsize*) ;
 int vtbuf_grow (TYPE_4__*,int *,int ) ;
 struct vt_font* vtfont_ref (struct vt_font*) ;
 int vtfont_unref (struct vt_font*) ;

__attribute__((used)) static int
vt_change_font(struct vt_window *vw, struct vt_font *vf)
{
 struct vt_device *vd = vw->vw_device;
 struct terminal *tm = vw->vw_terminal;
 term_pos_t size;
 struct winsize wsz;
 VT_LOCK(vd);
 if (vw->vw_flags & VWF_BUSY) {

  VT_UNLOCK(vd);
  return (EBUSY);
 }
 vw->vw_flags |= VWF_BUSY;
 VT_UNLOCK(vd);

 vt_termsize(vd, vf, &size);
 vt_winsize(vd, vf, &wsz);


 terminal_mute(tm, 1);
 vtbuf_grow(&vw->vw_buf, &size, vw->vw_buf.vb_history_size);
 terminal_set_winsize_blank(tm, &wsz, 0, ((void*)0));
 terminal_set_cursor(tm, &vw->vw_buf.vb_cursor);
 terminal_mute(tm, 0);


 VT_LOCK(vd);
 if (vw->vw_font != vf && vw->vw_font != ((void*)0) && vf != ((void*)0)) {




  vtfont_unref(vw->vw_font);
  vw->vw_font = vtfont_ref(vf);
 }





 vt_compute_drawable_area(vw);
 vd->vd_mx = min(vd->vd_mx,
     vw->vw_draw_area.tr_end.tp_col -
     vw->vw_draw_area.tr_begin.tp_col - 1);
 vd->vd_my = min(vd->vd_my,
     vw->vw_draw_area.tr_end.tp_row -
     vw->vw_draw_area.tr_begin.tp_row - 1);


 if (vd->vd_curwindow == vw) {
  vd->vd_flags |= VDF_INVALID;
  vt_resume_flush_timer(vw, 0);
 }
 vw->vw_flags &= ~VWF_BUSY;
 VT_UNLOCK(vd);
 return (0);
}
