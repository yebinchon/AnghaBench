
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int history; int history_pos; } ;
typedef TYPE_1__ scr_stat ;


 int history_to_screen (TYPE_1__*) ;
 int sc_vtb_tail (int ) ;

void
sc_hist_home(scr_stat *scp)
{
 scp->history_pos = sc_vtb_tail(scp->history);
 history_to_screen(scp);
}
