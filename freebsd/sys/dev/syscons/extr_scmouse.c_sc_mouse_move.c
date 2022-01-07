
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mouse_xpos; int mouse_oldxpos; int mouse_ypos; int mouse_oldypos; int font_size; int font_width; int yoff; int xsize; int status; scalar_t__ xoff; scalar_t__ mouse_oldpos; scalar_t__ mouse_pos; } ;
typedef TYPE_1__ scr_stat ;


 int MOUSE_MOVED ;
 int spltty () ;
 int splx (int) ;

void
sc_mouse_move(scr_stat *scp, int x, int y)
{
    int s;

    s = spltty();
    scp->mouse_xpos = scp->mouse_oldxpos = x;
    scp->mouse_ypos = scp->mouse_oldypos = y;
    if (scp->font_size <= 0 || scp->font_width <= 0)
 scp->mouse_pos = scp->mouse_oldpos = 0;
    else
 scp->mouse_pos = scp->mouse_oldpos =
     (y/scp->font_size - scp->yoff)*scp->xsize + x/scp->font_width -
     scp->xoff;
    scp->status |= MOUSE_MOVED;
    splx(s);
}
