
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mouse_cut_end; int mouse_cut_start; int xsize; int ysize; int status; } ;
typedef TYPE_1__ scr_stat ;


 int MOUSE_CUTTING ;
 int mark_for_update (TYPE_1__*,int) ;
 int spltty () ;
 int splx (int) ;

void
sc_remove_cutmarking(scr_stat *scp)
{
    int s;

    s = spltty();
    if (scp->mouse_cut_end >= 0) {
 mark_for_update(scp, scp->mouse_cut_start);
 mark_for_update(scp, scp->mouse_cut_end);
    }
    scp->mouse_cut_start = scp->xsize*scp->ysize;
    scp->mouse_cut_end = -1;
    splx(s);
    scp->status &= ~MOUSE_CUTTING;
}
