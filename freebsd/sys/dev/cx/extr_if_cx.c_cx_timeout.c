
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int atimeout; TYPE_2__* board; int intr_action; TYPE_1__* tty; } ;
typedef TYPE_3__ drv_t ;
typedef int bdrv_t ;
struct TYPE_7__ {scalar_t__ sys; } ;
struct TYPE_6__ {int t_state; scalar_t__ t_dev; } ;


 int CX_DEBUG (TYPE_3__*,char*) ;
 int CX_LOCK (int *) ;
 int CX_UNLOCK (int *) ;
 int CX_WRITE ;
 int MY_SOFT_INTR ;
 int NCHAN ;
 int NCX ;
 int TS_BUSY ;
 int ** adapter ;
 int callout_reset (int *,int,void (*) (void*),int ) ;
 TYPE_3__** channel ;
 int cx_fast_ih ;
 int hz ;
 int splhigh () ;
 int splx (int) ;
 int swi_sched (int ,int ) ;
 int timeout_handle ;

__attribute__((used)) static void cx_timeout (void *arg)
{
 drv_t *d;
 int s, i, k;

 for (i = 0; i < NCX; i++) {
  if (adapter[i] == ((void*)0))
   continue;
  for (k = 0; k < NCHAN; ++k) {
   d = channel[i * NCHAN + k];
   if (! d)
    continue;
   s = splhigh ();
   CX_LOCK ((bdrv_t *)d->board->sys);
   if (d->atimeout == 1 && d->tty && d->tty->t_state & TS_BUSY) {
    d->tty->t_state &= ~TS_BUSY;
    if (d->tty->t_dev) {
     d->intr_action |= CX_WRITE;
     MY_SOFT_INTR = 1;
     swi_sched (cx_fast_ih, 0);
    }
    CX_DEBUG (d, ("cx_timeout\n"));
   }
   if (d->atimeout)
    d->atimeout--;
   CX_UNLOCK ((bdrv_t *)d->board->sys);
   splx (s);
  }
 }
 callout_reset (&timeout_handle, hz*5, cx_timeout, 0);
}
