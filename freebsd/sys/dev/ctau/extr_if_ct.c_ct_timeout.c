
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bd; TYPE_2__* chan; } ;
typedef TYPE_1__ drv_t ;
typedef int bdrv_t ;
struct TYPE_5__ {scalar_t__ mode; } ;


 int CT_LOCK (int *) ;
 int CT_UNLOCK (int *) ;
 scalar_t__ M_G703 ;
 int NCHAN ;
 int NCTAU ;
 int ** adapter ;
 int callout_reset (int *,int ,void (*) (void*),int ) ;
 TYPE_1__** channel ;
 int ct_g703_timer (TYPE_2__*) ;
 int hz ;
 int splimp () ;
 int splx (int) ;
 int timeout_handle ;

__attribute__((used)) static void ct_timeout (void *arg)
{
 drv_t *d;
 int s, i, k;

 for (i = 0; i < NCTAU; ++i) {
  if (adapter[i] == ((void*)0))
   continue;
  for (k = 0; k < NCHAN; k++) {
   d = channel[i * NCHAN + k];
   if (! d)
    continue;
   if (d->chan->mode != M_G703)
    continue;
   s = splimp ();
   CT_LOCK ((bdrv_t *)d->bd);
   ct_g703_timer (d->chan);
   CT_UNLOCK ((bdrv_t *)d->bd);
   splx (s);
  }
 }

 callout_reset (&timeout_handle, hz, ct_timeout, 0);
}
