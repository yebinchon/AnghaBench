
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xsize; int ysize; int history; int history_pos; int vtb; } ;
typedef TYPE_1__ scr_stat ;


 int sc_vtb_append (int *,int ,int ,int) ;
 int sc_vtb_tail (int ) ;

void
sc_hist_save(scr_stat *scp)
{
 sc_vtb_append(&scp->vtb, 0, scp->history, scp->xsize*scp->ysize);
 scp->history_pos = sc_vtb_tail(scp->history);
}
