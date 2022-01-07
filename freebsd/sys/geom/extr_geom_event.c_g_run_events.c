
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MA_OWNED ;
 int PDROP ;
 int PRIBIO ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int g_doorstep ;
 int g_eventlock ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int g_wait_event ;
 int g_wither_washer () ;
 scalar_t__ g_wither_work ;
 int hz ;
 int msleep (int *,int *,int,char*,int) ;
 int mtx_assert (int *,int ) ;
 int mtx_unlock (int *) ;
 scalar_t__ one_event () ;

void
g_run_events()
{

 for (;;) {
  g_topology_lock();
  while (one_event())
   ;
  mtx_assert(&g_eventlock, MA_OWNED);
  if (g_wither_work) {
   g_wither_work = 0;
   mtx_unlock(&g_eventlock);
   g_wither_washer();
   g_topology_unlock();
  } else {
   g_topology_unlock();
   msleep(&g_wait_event, &g_eventlock, PRIBIO | PDROP,
       "-", TAILQ_EMPTY(&g_doorstep) ? 0 : hz / 10);
  }
 }

}
