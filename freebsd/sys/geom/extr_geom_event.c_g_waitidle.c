
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int td_pflags; } ;


 int PPAUSE ;
 int TAILQ_EMPTY (int *) ;
 int TDP_GEOM ;
 int TSUNWAIT (char*) ;
 int TSWAIT (char*) ;
 TYPE_1__* curthread ;
 int g_eventlock ;
 int g_events ;
 int g_pending_events ;
 int g_topology_assert_not () ;
 int hz ;
 int msleep (int *,int *,int ,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
g_waitidle(void)
{

 g_topology_assert_not();

 mtx_lock(&g_eventlock);
 TSWAIT("GEOM events");
 while (!TAILQ_EMPTY(&g_events))
  msleep(&g_pending_events, &g_eventlock, PPAUSE,
      "g_waitidle", hz/5);
 TSUNWAIT("GEOM events");
 mtx_unlock(&g_eventlock);
 curthread->td_pflags &= ~TDP_GEOM;
}
