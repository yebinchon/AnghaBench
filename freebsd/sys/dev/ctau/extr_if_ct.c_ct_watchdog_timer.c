
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int timeout; int timeout_handle; int * bd; } ;
typedef TYPE_1__ drv_t ;
typedef int bdrv_t ;


 int CT_LOCK (int *) ;
 int CT_UNLOCK (int *) ;
 int callout_reset (int *,int ,void (*) (void*),TYPE_1__*) ;
 int ct_watchdog (TYPE_1__*) ;
 int hz ;

__attribute__((used)) static void ct_watchdog_timer (void *arg)
{
 drv_t *d = arg;
 bdrv_t *bd = d->bd;

 CT_LOCK (bd);
 if (d->timeout == 1)
  ct_watchdog (d);
 if (d->timeout)
  d->timeout--;
 callout_reset (&d->timeout_handle, hz, ct_watchdog_timer, d);
 CT_UNLOCK (bd);
}
