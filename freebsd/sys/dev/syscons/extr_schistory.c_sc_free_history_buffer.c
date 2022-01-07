
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * history; } ;
typedef TYPE_1__ scr_stat ;
typedef int sc_vtb_t ;


 int M_DEVBUF ;
 int SC_HISTORY_SIZE ;
 int extra_history_size ;
 int free (int *,int ) ;
 int imax (int ,int) ;
 int sc_vtb_destroy (int *) ;
 int sc_vtb_rows (int *) ;

void
sc_free_history_buffer(scr_stat *scp, int prev_ysize)
{
 sc_vtb_t *history;
 int cur_lines;
 int min_lines;

 history = scp->history;
 scp->history = ((void*)0);
 if (history == ((void*)0))
  return;

 cur_lines = sc_vtb_rows(history);
 min_lines = imax(SC_HISTORY_SIZE, prev_ysize);
 extra_history_size += (cur_lines > min_lines) ?
      cur_lines - min_lines : 0;

 sc_vtb_destroy(history);
 free(history, M_DEVBUF);
}
