
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct tcp_syncache {scalar_t__ pause_until; int paused; int pause_co; int pause_mtx; } ;


 int MA_NOTRECURSED ;
 int MA_OWNED ;
 int callout_deactivate (int *) ;
 int callout_schedule (int *,scalar_t__) ;
 scalar_t__ hz ;
 int mtx_assert (int *,int) ;
 scalar_t__ time_uptime ;

__attribute__((used)) static void
syncache_unpause(void *arg)
{
 struct tcp_syncache *sc;
 time_t delta;

 sc = arg;
 mtx_assert(&sc->pause_mtx, MA_OWNED | MA_NOTRECURSED);
 callout_deactivate(&sc->pause_co);





 if ((delta = sc->pause_until - time_uptime) > 0)
  callout_schedule(&sc->pause_co, delta * hz);
 else
  sc->paused = 0;
}
