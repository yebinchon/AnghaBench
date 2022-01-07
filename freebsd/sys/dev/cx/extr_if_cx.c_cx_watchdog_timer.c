
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int timeout; int timeout_handle; TYPE_1__* board; } ;
typedef TYPE_2__ drv_t ;
typedef int bdrv_t ;
struct TYPE_5__ {int * sys; } ;


 int CX_LOCK (int *) ;
 int CX_UNLOCK (int *) ;
 int callout_reset (int *,int ,void (*) (void*),TYPE_2__*) ;
 int cx_watchdog (TYPE_2__*) ;
 int hz ;

__attribute__((used)) static void cx_watchdog_timer (void *arg)
{
 drv_t *d = arg;
 bdrv_t *bd = d->board->sys;

 CX_LOCK (bd);
 if (d->timeout == 1)
  cx_watchdog (d);
 if (d->timeout)
  d->timeout--;
 callout_reset (&d->timeout_handle, hz, cx_watchdog_timer, d);
 CX_UNLOCK (bd);
}
