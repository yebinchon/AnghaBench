
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int term_pos_t ;
struct vt_window {int vw_buf; } ;
struct terminal {struct vt_window* tm_softc; } ;


 int vtbuf_cursor_position (int *,int const*) ;

__attribute__((used)) static void
vtterm_cursor(struct terminal *tm, const term_pos_t *p)
{
 struct vt_window *vw = tm->tm_softc;

 vtbuf_cursor_position(&vw->vw_buf, p);
}
