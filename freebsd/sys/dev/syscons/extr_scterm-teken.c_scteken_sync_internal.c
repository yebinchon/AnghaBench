
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ts_teken; } ;
typedef TYPE_1__ teken_stat ;
struct TYPE_9__ {int tp_row; int tp_col; } ;
typedef TYPE_2__ teken_pos_t ;
struct TYPE_10__ {int ypos; int xpos; int ysize; int xsize; } ;
typedef TYPE_3__ scr_stat ;


 int teken_set_cursor (int *,TYPE_2__*) ;
 int teken_set_winsize_noreset (int *,TYPE_2__*) ;

__attribute__((used)) static void
scteken_sync_internal(scr_stat *scp, teken_stat *ts)
{
 teken_pos_t tp;

 tp.tp_col = scp->xsize;
 tp.tp_row = scp->ysize;
 teken_set_winsize_noreset(&ts->ts_teken, &tp);
 tp.tp_col = scp->xpos;
 tp.tp_row = scp->ypos;
 teken_set_cursor(&ts->ts_teken, &tp);
}
