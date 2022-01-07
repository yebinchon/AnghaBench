
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int term_rect_t ;
typedef int term_pos_t ;
struct vt_window {int vw_buf; } ;
struct terminal {struct vt_window* tm_softc; } ;


 int vtbuf_copy (int *,int const*,int const*) ;

__attribute__((used)) static void
vtterm_copy(struct terminal *tm, const term_rect_t *r,
    const term_pos_t *p)
{
 struct vt_window *vw = tm->tm_softc;

 vtbuf_copy(&vw->vw_buf, r, p);
}
