
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ end; scalar_t__ beg; } ;
struct TYPE_16__ {int intr_action; TYPE_5__* tty; TYPE_4__ aqueue; TYPE_2__* board; TYPE_1__* chan; } ;
typedef TYPE_3__ drv_t ;
typedef int bdrv_t ;
typedef TYPE_4__ async_q ;
struct TYPE_19__ {scalar_t__ c_cc; } ;
struct TYPE_18__ {int t_state; scalar_t__ t_ihiwat; int t_cflag; int t_iflag; int t_rawcc; scalar_t__* t_cc; scalar_t__ t_line; int t_lflag; TYPE_9__ t_rawq; int t_dev; } ;
struct TYPE_15__ {int * sys; } ;
struct TYPE_14__ {scalar_t__ type; scalar_t__ mode; } ;


 int AQ_GSZ (TYPE_4__*) ;
 int AQ_POP (TYPE_4__*,int) ;
 int CRTS_IFLOW ;
 int CX_LOCK (int *) ;
 int CX_READ ;
 int CX_UNLOCK (int *) ;
 int CX_WRITE ;
 int FLUSHO ;
 int IXANY ;
 int IXOFF ;
 scalar_t__ MY_SOFT_INTR ;
 scalar_t__ M_ASYNC ;
 int NCHAN ;
 int NCX ;
 int TS_CAN_BYPASS_L_RINT ;
 int TS_TBLOCK ;
 int TS_TTSTOP ;
 scalar_t__ T_NONE ;
 size_t VSTART ;
 size_t VSTOP ;
 TYPE_3__** channel ;
 int cx_oproc (TYPE_5__*) ;
 int putc (int,TYPE_9__*) ;
 int splhigh () ;
 int splx (int) ;
 int ttwakeup (TYPE_5__*) ;
 int ttyblock (TYPE_5__*) ;
 int ttyld_rint (TYPE_5__*,int) ;
 int ttyld_start (TYPE_5__*) ;

void cx_softintr (void *unused)
{
 drv_t *d;
 bdrv_t *bd;
 async_q *q;
 int i, s, ic, k;
 while (MY_SOFT_INTR) {
  MY_SOFT_INTR = 0;
  for (i=0; i<NCX*NCHAN; ++i) {
   d = channel [i];
   if (!d || !d->chan || d->chan->type == T_NONE
       || d->chan->mode != M_ASYNC || !d->tty
       || !d->tty->t_dev)
    continue;
   bd = d->board->sys;
   s = splhigh ();
   CX_LOCK (bd);
   if (d->intr_action & CX_READ) {
    q = &(d->aqueue);
    if (d->tty->t_state & TS_CAN_BYPASS_L_RINT) {
     k = AQ_GSZ(q);
     if (d->tty->t_rawq.c_cc + k >
      d->tty->t_ihiwat
         && (d->tty->t_cflag & CRTS_IFLOW
      || d->tty->t_iflag & IXOFF)
         && !(d->tty->t_state & TS_TBLOCK))
      ttyblock(d->tty);
     d->tty->t_rawcc += k;
     while (k>0) {
      k--;
      AQ_POP (q, ic);
      CX_UNLOCK (bd);
      splx (s);
      putc (ic, &d->tty->t_rawq);
      s = splhigh ();
      CX_LOCK (bd);
     }
     ttwakeup(d->tty);
     if (d->tty->t_state & TS_TTSTOP
         && (d->tty->t_iflag & IXANY
      || d->tty->t_cc[VSTART] ==
      d->tty->t_cc[VSTOP])) {
      d->tty->t_state &= ~TS_TTSTOP;
      d->tty->t_lflag &= ~FLUSHO;
      d->intr_action |= CX_WRITE;
     }
    } else {
     while (q->end != q->beg) {
      AQ_POP (q, ic);
      CX_UNLOCK (bd);
      splx (s);
      ttyld_rint (d->tty, ic);
      s = splhigh ();
      CX_LOCK (bd);
     }
    }
    d->intr_action &= ~CX_READ;
   }
   splx (s);
   CX_UNLOCK (bd);

   s = splhigh ();
   CX_LOCK (bd);
   if (d->intr_action & CX_WRITE) {
    if (d->tty->t_line)
     ttyld_start (d->tty);
    else
     cx_oproc (d->tty);
    d->intr_action &= ~CX_WRITE;
   }
   CX_UNLOCK (bd);
   splx (s);

  }
 }
}
