
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ysize; int * history; int history_pos; TYPE_1__* sc; int xsize; } ;
typedef TYPE_2__ scr_stat ;
typedef int sc_vtb_t ;
struct TYPE_4__ {int * scr_map; } ;


 int EINVAL ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_WAITOK ;
 int SC_HISTORY_SIZE ;
 int SC_NORM_ATTR ;
 int VTB_RINGBUFFER ;
 int copy_history (int *,int *) ;
 int extra_history_size ;
 int free (int *,int ) ;
 int imax (int,int) ;
 scalar_t__ malloc (int,int ,int ) ;
 int sc_vtb_clear (int *,int ,int) ;
 int sc_vtb_destroy (int *) ;
 int sc_vtb_init (int *,int ,int ,int,int *,int) ;
 int sc_vtb_rows (int *) ;
 int sc_vtb_tail (int *) ;

int
sc_alloc_history_buffer(scr_stat *scp, int lines, int prev_ysize, int wait)
{






 sc_vtb_t *history;
 sc_vtb_t *prev_history;
 int cur_lines;
 int min_lines;
 int delta;

 if (lines <= 0)
  lines = SC_HISTORY_SIZE;


 lines = imax(lines, scp->ysize);


 history = prev_history = scp->history;
 scp->history = ((void*)0);


 delta = 0;
 if (prev_history) {
  cur_lines = sc_vtb_rows(history);
  min_lines = imax(SC_HISTORY_SIZE, prev_ysize);
  if (cur_lines > min_lines)
   delta = cur_lines - min_lines;
 }


 min_lines = imax(SC_HISTORY_SIZE, scp->ysize);
 if (lines > min_lines) {
  if (lines - min_lines > extra_history_size + delta) {

   scp->history = prev_history;
   return EINVAL;
  }
 }


 history = (sc_vtb_t *)malloc(sizeof(*history),
         M_DEVBUF,
         (wait) ? M_WAITOK : M_NOWAIT);
 if (history != ((void*)0)) {
  if (lines > min_lines)
   extra_history_size -= lines - min_lines;

  sc_vtb_init(history, VTB_RINGBUFFER, scp->xsize, lines,
       ((void*)0), wait);

  sc_vtb_clear(history, scp->sc->scr_map[0x20],
        SC_NORM_ATTR << 8);
  if (prev_history != ((void*)0))
   copy_history(prev_history, history);
  scp->history_pos = sc_vtb_tail(history);
 } else {
  scp->history_pos = 0;
 }


 if (prev_history != ((void*)0)) {
  extra_history_size += delta;
  sc_vtb_destroy(prev_history);
  free(prev_history, M_DEVBUF);
 }

 scp->history = history;

 return 0;
}
