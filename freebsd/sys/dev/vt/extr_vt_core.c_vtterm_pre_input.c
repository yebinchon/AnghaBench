
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_window {int vw_buf; } ;
struct terminal {struct vt_window* tm_softc; } ;


 int vtbuf_lock (int *) ;

__attribute__((used)) static void
vtterm_pre_input(struct terminal *tm)
{
 struct vt_window *vw = tm->tm_softc;

 vtbuf_lock(&vw->vw_buf);
}
