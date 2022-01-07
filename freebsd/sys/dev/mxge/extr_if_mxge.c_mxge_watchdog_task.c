
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int driver_mtx; } ;
typedef TYPE_1__ mxge_softc_t ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int mxge_watchdog_reset (TYPE_1__*) ;

__attribute__((used)) static void
mxge_watchdog_task(void *arg, int pending)
{
 mxge_softc_t *sc = arg;


 mtx_lock(&sc->driver_mtx);
 mxge_watchdog_reset(sc);
 mtx_unlock(&sc->driver_mtx);
}
