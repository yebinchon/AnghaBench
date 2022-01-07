
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int open_dev; TYPE_5__* chan; scalar_t__ running; TYPE_2__* tty; TYPE_1__* board; } ;
typedef TYPE_3__ drv_t ;
typedef int bdrv_t ;
struct TYPE_11__ {scalar_t__ mode; scalar_t__ rts; scalar_t__ dtr; } ;
struct TYPE_9__ {int t_state; } ;
struct TYPE_8__ {int * sys; } ;


 int CX_LOCK (int *) ;
 int CX_UNLOCK (int *) ;
 scalar_t__ M_ASYNC ;
 int TIOCM_CD ;
 int TIOCM_CTS ;
 int TIOCM_DSR ;
 int TIOCM_DTR ;
 int TIOCM_LE ;
 int TIOCM_RTS ;
 int TS_ISOPEN ;
 scalar_t__ cx_get_cd (TYPE_5__*) ;
 scalar_t__ cx_get_cts (TYPE_5__*) ;
 scalar_t__ cx_get_dsr (TYPE_5__*) ;
 int splhigh () ;
 int splx (int) ;

__attribute__((used)) static int cx_modem_status (drv_t *d)
{
 bdrv_t *bd = d->board->sys;
 int status = 0, s = splhigh ();
 CX_LOCK (bd);

 if ((d->chan->mode == M_ASYNC && d->tty && (d->tty->t_state & TS_ISOPEN) &&
     (d->open_dev|0x2)) || (d->chan->mode != M_ASYNC && d->running))
  status = TIOCM_LE;

 if (cx_get_dsr (d->chan)) status |= TIOCM_DSR;
 if (cx_get_cd (d->chan)) status |= TIOCM_CD;
 if (cx_get_cts (d->chan)) status |= TIOCM_CTS;
 if (d->chan->dtr) status |= TIOCM_DTR;
 if (d->chan->rts) status |= TIOCM_RTS;
 CX_UNLOCK (bd);
 splx (s);
 return status;
}
