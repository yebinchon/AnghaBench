
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ history_pos; int xsize; int ysize; int history; } ;
typedef TYPE_1__ scr_stat ;


 int history_to_screen (TYPE_1__*) ;
 int sc_vtb_pos (int ,scalar_t__,int) ;
 int sc_vtb_seek (int ,int ) ;
 scalar_t__ sc_vtb_tail (int ) ;

int
sc_hist_restore(scr_stat *scp)
{
 int ret;

 if (scp->history_pos != sc_vtb_tail(scp->history)) {
  scp->history_pos = sc_vtb_tail(scp->history);
  history_to_screen(scp);
  ret = 0;
 } else {
  ret = 1;
 }
 sc_vtb_seek(scp->history, sc_vtb_pos(scp->history,
          sc_vtb_tail(scp->history),
          -scp->xsize*scp->ysize));
 return ret;
}
