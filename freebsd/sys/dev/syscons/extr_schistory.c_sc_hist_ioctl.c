
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
struct tty {int dummy; } ;
struct thread {int dummy; } ;
struct TYPE_6__ {int status; TYPE_1__* sc; int history; int ysize; } ;
typedef TYPE_2__ scr_stat ;
typedef scalar_t__ caddr_t ;
struct TYPE_5__ {int * scr_map; } ;


 int BUFFER_SAVED ;


 int DPRINTF (int,char*) ;
 int EBUSY ;
 int EINVAL ;
 int ENOIOCTL ;
 int SC_NORM_ATTR ;
 TYPE_2__* SC_STAT (struct tty*) ;
 int TRUE ;
 int extra_history_size ;
 int imax (int,int ) ;
 int sc_alloc_history_buffer (TYPE_2__*,int ,int ,int ) ;
 int sc_vtb_clear (int ,int ,int) ;
 int sc_vtb_rows (int ) ;

int
sc_hist_ioctl(struct tty *tp, u_long cmd, caddr_t data, struct thread *td)
{
 scr_stat *scp;
 int error;

 switch (cmd) {

 case 128:
  scp = SC_STAT(tp);
  if (*(int *)data <= 0)
   return EINVAL;
  if (scp->status & BUFFER_SAVED)
   return EBUSY;
  DPRINTF(5, ("lines:%d, ysize:%d, pool:%d\n",
       *(int *)data, scp->ysize, extra_history_size));
  error = sc_alloc_history_buffer(scp,
            imax(*(int *)data, scp->ysize),
            scp->ysize, TRUE);
  DPRINTF(5, ("error:%d, rows:%d, pool:%d\n", error,
       sc_vtb_rows(scp->history), extra_history_size));
  return error;

 case 129:
  scp = SC_STAT(tp);
  sc_vtb_clear(scp->history, scp->sc->scr_map[0x20],
      SC_NORM_ATTR << 8);
  return 0;
 }

 return ENOIOCTL;
}
