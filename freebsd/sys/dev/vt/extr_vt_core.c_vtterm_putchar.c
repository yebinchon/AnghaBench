
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int term_pos_t ;
typedef int term_char_t ;
struct vt_window {int vw_buf; } ;
struct terminal {struct vt_window* tm_softc; } ;


 int vtbuf_putchar (int *,int const*,int ) ;

__attribute__((used)) static void
vtterm_putchar(struct terminal *tm, const term_pos_t *p, term_char_t c)
{
 struct vt_window *vw = tm->tm_softc;

 vtbuf_putchar(&vw->vw_buf, p, c);
}
