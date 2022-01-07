
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_4__* ifp; scalar_t__ timeout; int intr_action; TYPE_1__* tty; scalar_t__ atimeout; } ;
typedef TYPE_2__ drv_t ;
struct TYPE_9__ {scalar_t__ mode; TYPE_2__* sys; } ;
typedef TYPE_3__ cx_chan_t ;
struct TYPE_10__ {int if_drv_flags; } ;
struct TYPE_7__ {int t_state; scalar_t__ t_dev; } ;


 int CX_WRITE ;
 int IFCOUNTER_OPACKETS ;
 int IFF_DRV_OACTIVE ;
 int MY_SOFT_INTR ;
 scalar_t__ M_ASYNC ;
 int TS_BUSY ;
 int TS_FLUSH ;
 int cx_fast_ih ;
 int cx_start (TYPE_2__*) ;
 int if_inc_counter (TYPE_4__*,int ,int) ;
 int swi_sched (int ,int ) ;

__attribute__((used)) static void cx_transmit (cx_chan_t *c, void *attachment, int len)
{
 drv_t *d = c->sys;

 if (!d)
  return;

 if (c->mode == M_ASYNC && d->tty) {
  d->tty->t_state &= ~(TS_BUSY | TS_FLUSH);
  d->atimeout = 0;
  if (d->tty->t_dev) {
   d->intr_action |= CX_WRITE;
   MY_SOFT_INTR = 1;
   swi_sched (cx_fast_ih, 0);
  }
  return;
 }
 d->timeout = 0;

 if_inc_counter(d->ifp, IFCOUNTER_OPACKETS, 1);
 d->ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

 cx_start (d);
}
