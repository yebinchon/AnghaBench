
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct TYPE_11__ {int ifp; int queue; int running; } ;
typedef TYPE_2__ drv_t ;
struct TYPE_12__ {size_t num; TYPE_1__* chan; } ;
typedef TYPE_3__ ct_board_t ;
struct TYPE_13__ {TYPE_3__* board; } ;
typedef TYPE_4__ bdrv_t ;
struct TYPE_10__ {TYPE_2__* sys; scalar_t__ type; } ;


 int CT_LOCK (TYPE_4__*) ;
 int CT_UNLOCK (TYPE_4__*) ;
 int IF_DEQUEUE (int *,struct mbuf*) ;
 int NCHAN ;
 scalar_t__ _IF_QLEN (int *) ;
 int callout_reset (int *,int,int ,TYPE_3__*) ;
 int ct_int_handler (TYPE_3__*) ;
 int ct_led (TYPE_3__*,int) ;
 int ct_led_off ;
 int hz ;
 int * led_timo ;
 int splimp () ;
 int splx (int) ;
 int sppp_input (int ,struct mbuf*) ;

__attribute__((used)) static void ct_intr (void *arg)
{
 bdrv_t *bd = arg;
 ct_board_t *b = bd->board;

 int i;

 int s = splimp ();

 CT_LOCK (bd);

 ct_led (b, 1);

 ct_int_handler (b);


 callout_reset (&led_timo[b->num], hz/20, ct_led_off, b);
 CT_UNLOCK (bd);
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
