
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int term_pos_t ;
struct winsize {int dummy; } ;
struct TYPE_2__ {struct terminal* vb_terminal; } ;
struct vt_window {unsigned int vw_number; int vw_proc_dead_timer; TYPE_1__ vw_buf; struct terminal* vw_terminal; int vw_font; int vw_kbdmode; struct vt_device* vw_device; } ;
struct vt_device {int vd_flags; struct vt_window** vd_windows; } ;
struct terminal {int dummy; } ;


 int K_XLATE ;
 int M_VT ;
 int M_WAITOK ;
 int M_ZERO ;
 int VDF_TEXTMODE ;
 int callout_init (int *,int ) ;
 struct vt_window* malloc (int,int ,int) ;
 struct terminal* terminal_alloc (int *,struct vt_window*) ;
 int terminal_set_winsize (struct terminal*,struct winsize*) ;
 int vt_compute_drawable_area (struct vt_window*) ;
 int vt_font_default ;
 int vt_termclass ;
 int vt_termsize (struct vt_device*,int ,int *) ;
 int vt_winsize (struct vt_device*,int ,struct winsize*) ;
 int vtbuf_init (TYPE_1__*,int *) ;
 int vtfont_ref (int *) ;

__attribute__((used)) static struct vt_window *
vt_allocate_window(struct vt_device *vd, unsigned int window)
{
 struct vt_window *vw;
 struct terminal *tm;
 term_pos_t size;
 struct winsize wsz;

 vw = malloc(sizeof *vw, M_VT, M_WAITOK|M_ZERO);
 vw->vw_device = vd;
 vw->vw_number = window;
 vw->vw_kbdmode = K_XLATE;

 if ((vd->vd_flags & VDF_TEXTMODE) == 0) {
  vw->vw_font = vtfont_ref(&vt_font_default);
  vt_compute_drawable_area(vw);
 }

 vt_termsize(vd, vw->vw_font, &size);
 vt_winsize(vd, vw->vw_font, &wsz);
 tm = vw->vw_terminal = terminal_alloc(&vt_termclass, vw);
 vw->vw_buf.vb_terminal = tm;
 vtbuf_init(&vw->vw_buf, &size);

 terminal_set_winsize(tm, &wsz);
 vd->vd_windows[window] = vw;
 callout_init(&vw->vw_proc_dead_timer, 0);

 return (vw);
}
