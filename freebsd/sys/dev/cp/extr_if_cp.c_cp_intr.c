
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct TYPE_12__ {int ifp; int queue; int running; } ;
typedef TYPE_2__ drv_t ;
struct TYPE_13__ {size_t num; TYPE_1__* chan; int * sys; } ;
typedef TYPE_3__ cp_board_t ;
struct TYPE_14__ {TYPE_3__* board; } ;
typedef TYPE_4__ bdrv_t ;
struct TYPE_11__ {TYPE_2__* sys; scalar_t__ type; } ;


 int CP_LOCK (TYPE_4__*) ;
 int CP_UNLOCK (TYPE_4__*) ;
 int IF_DEQUEUE (int *,struct mbuf*) ;
 int NCHAN ;
 scalar_t__ _IF_QLEN (int *) ;
 int callout_reset (int *,int,int ,TYPE_3__*) ;
 scalar_t__ cp_destroy ;
 int cp_interrupt (TYPE_3__*) ;
 int cp_interrupt_poll (TYPE_3__*,int) ;
 int cp_led (TYPE_3__*,int) ;
 int cp_led_off ;
 int hz ;
 int * led_timo ;
 int splimp () ;
 int splx (int) ;
 int sppp_input (int ,struct mbuf*) ;

__attribute__((used)) static void cp_intr (void *arg)
{
 bdrv_t *bd = arg;
 cp_board_t *b = bd->board;

 int i;

 int s = splimp ();
 if (cp_destroy) {
  splx (s);
  return;
 }
 CP_LOCK (bd);

 if (b->sys == ((void*)0)) {

  cp_interrupt_poll (b, 1);
  CP_UNLOCK (bd);
  return;
 }

 cp_led (b, 1);

 cp_interrupt (b);


 callout_reset (&led_timo[b->num], hz/20, cp_led_off, b);
 CP_UNLOCK (bd);
 splx (s);



 for (i = 0; i < NCHAN && b->chan[i].type; i++) {
  drv_t *d = b->chan[i].sys;
  struct mbuf *m;
  if (!d || !d->running)
   continue;
  while (_IF_QLEN(&d->queue)) {
   IF_DEQUEUE (&d->queue,m);
   if (!m)
    continue;
   sppp_input (d->ifp, m);
  }
 }

}
