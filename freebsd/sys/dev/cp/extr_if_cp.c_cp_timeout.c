
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* board; TYPE_3__* chan; } ;
typedef TYPE_2__ drv_t ;
typedef int bdrv_t ;
struct TYPE_9__ {int type; } ;
struct TYPE_7__ {scalar_t__ sys; } ;


 int CP_LOCK (int *) ;
 int CP_UNLOCK (int *) ;
 int NBRD ;
 int NCHAN ;





 int ** adapter ;
 int callout_reset (int *,int ,void (*) (void*),int ) ;
 TYPE_2__** channel ;
 scalar_t__ cp_destroy ;
 int cp_e1_timer (TYPE_3__*) ;
 int cp_e3_timer (TYPE_3__*) ;
 int cp_g703_timer (TYPE_3__*) ;
 int hz ;
 int splimp () ;
 int splx (int) ;
 int timeout_handle ;

__attribute__((used)) static void cp_timeout (void *arg)
{
 drv_t *d;
 int s, i, k;

 for (i = 0; i < NBRD; ++i) {
  if (adapter[i] == ((void*)0))
   continue;
  for (k = 0; k < NCHAN; ++k) {
   s = splimp ();
   if (cp_destroy) {
    splx (s);
    return;
   }
   d = channel[i * NCHAN + k];
   if (!d) {
    splx (s);
    continue;
   }
   CP_LOCK ((bdrv_t *)d->board->sys);
   switch (d->chan->type) {
   case 130:
    cp_g703_timer (d->chan);
    break;
   case 132:
    cp_e1_timer (d->chan);
    break;
   case 131:
   case 128:
   case 129:
    cp_e3_timer (d->chan);
    break;
   default:
    break;
   }
   CP_UNLOCK ((bdrv_t *)d->board->sys);
   splx (s);
  }
 }
 s = splimp ();
 if (!cp_destroy)
  callout_reset (&timeout_handle, hz, cp_timeout, 0);
 splx (s);
}
