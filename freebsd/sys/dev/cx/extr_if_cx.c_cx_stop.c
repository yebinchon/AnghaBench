
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty {int t_state; TYPE_2__* t_sc; } ;
struct TYPE_5__ {int chan; TYPE_1__* board; } ;
typedef TYPE_2__ drv_t ;
typedef int bdrv_t ;
struct TYPE_4__ {int * sys; } ;


 int CX_DEBUG2 (TYPE_2__*,char*) ;
 int CX_LOCK (int *) ;
 int CX_UNLOCK (int *) ;
 int TS_BUSY ;
 int cx_transmitter_ctl (int ,int ) ;
 int splhigh () ;
 int splx (int) ;

__attribute__((used)) static void cx_stop (struct tty *tp, int flag)
{
 drv_t *d;
 bdrv_t *bd;
 int s;

 d = tp->t_sc;
 bd = d->board->sys;

 s = splhigh ();
 CX_LOCK (bd);
 if (tp->t_state & TS_BUSY) {

  CX_DEBUG2 (d, ("cx_stop\n"));
  cx_transmitter_ctl (d->chan, 0);
 }
 CX_UNLOCK (bd);
 splx (s);
}
