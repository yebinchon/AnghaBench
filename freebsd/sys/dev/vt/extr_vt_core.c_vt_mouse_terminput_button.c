
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_window {int vw_terminal; struct vt_font* vw_font; } ;
struct vt_font {int vf_width; int vf_height; } ;
struct vt_device {int vd_mx; int vd_my; struct vt_window* vd_curwindow; } ;
typedef int mouseb ;


 int MIN (int,int) ;
 int terminal_input_char (int ,char) ;

__attribute__((used)) static void
vt_mouse_terminput_button(struct vt_device *vd, int button)
{
 struct vt_window *vw;
 struct vt_font *vf;
 char mouseb[6] = "\x1B[M";
 int i, x, y;

 vw = vd->vd_curwindow;
 vf = vw->vw_font;


 x = vd->vd_mx / vf->vf_width;
 y = vd->vd_my / vf->vf_height;

 x = MIN(x, 255 - '!');
 y = MIN(y, 255 - '!');

 mouseb[3] = ' ' + button;
 mouseb[4] = '!' + x;
 mouseb[5] = '!' + y;

 for (i = 0; i < sizeof(mouseb); i++)
  terminal_input_char(vw->vw_terminal, mouseb[i]);
}
