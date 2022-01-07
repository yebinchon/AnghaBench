
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int xsize; int ysize; scalar_t__ history_pos; int history; } ;
typedef TYPE_1__ scr_stat ;


 int history_to_screen (TYPE_1__*) ;
 scalar_t__ sc_vtb_pos (int ,scalar_t__,int) ;
 scalar_t__ sc_vtb_tail (int ) ;

int
sc_hist_up_line(scr_stat *scp)
{
 if (sc_vtb_pos(scp->history, scp->history_pos, -(scp->xsize*scp->ysize))
     == sc_vtb_tail(scp->history))
  return -1;
 scp->history_pos = sc_vtb_pos(scp->history, scp->history_pos,
          -scp->xsize);
 history_to_screen(scp);
 return 0;
}
