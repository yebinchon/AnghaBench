
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int cd; scalar_t__ tty; int * chan; TYPE_1__* board; } ;
typedef TYPE_2__ drv_t ;
typedef int cx_chan_t ;
typedef int bdrv_t ;
struct TYPE_4__ {int * sys; } ;


 int CX_DEBUG (TYPE_2__*,char*) ;
 int CX_LOCK (int *) ;
 int CX_UNLOCK (int *) ;
 int cx_get_cd (int *) ;
 int splhigh () ;
 int splx (int) ;
 int ttyld_modem (scalar_t__,int) ;

__attribute__((used)) static void cx_carrier (void *arg)
{
 drv_t *d = arg;
 bdrv_t *bd = d->board->sys;
 cx_chan_t *c = d->chan;
 int s, cd;

 s = splhigh ();
 CX_LOCK (bd);
 cd = cx_get_cd (c);
 if (d->cd != cd) {
  if (cd) {
   CX_DEBUG (d, ("carrier on\n"));
   d->cd = 1;
   CX_UNLOCK (bd);
   splx (s);
   if (d->tty)
    ttyld_modem(d->tty, 1);
  } else {
   CX_DEBUG (d, ("carrier loss\n"));
   d->cd = 0;
   CX_UNLOCK (bd);
   splx (s);
   if (d->tty)
    ttyld_modem(d->tty, 0);
  }
 } else {
  CX_UNLOCK (bd);
  splx (s);
 }
}
