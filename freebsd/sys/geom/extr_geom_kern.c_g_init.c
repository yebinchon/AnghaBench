
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int G_T_TOPOLOGY ;
 int RFHIGHPID ;
 int SHUTDOWN_PRI_FIRST ;
 int g_ctl_init () ;
 int g_down_procbody ;
 int g_down_td ;
 int g_event_init () ;
 int g_event_procbody ;
 int g_event_td ;
 int g_io_init () ;
 int g_proc ;
 int g_trace (int ,char*) ;
 int g_up_procbody ;
 int g_up_td ;
 int geom_shutdown ;
 int kproc_kthread_add (int ,int *,int *,int *,int ,int ,char*,char*) ;
 int shutdown_pre_sync ;
 int sx_init (int *,char*) ;
 int topology_lock ;

void
g_init(void)
{

 g_trace(G_T_TOPOLOGY, "g_ignition");
 sx_init(&topology_lock, "GEOM topology");
 g_io_init();
 g_event_init();
 g_ctl_init();
 kproc_kthread_add(g_event_procbody, ((void*)0), &g_proc, &g_event_td,
     RFHIGHPID, 0, "geom", "g_event");
 kproc_kthread_add(g_up_procbody, ((void*)0), &g_proc, &g_up_td,
     RFHIGHPID, 0, "geom", "g_up");
 kproc_kthread_add(g_down_procbody, ((void*)0), &g_proc, &g_down_td,
     RFHIGHPID, 0, "geom", "g_down");
 EVENTHANDLER_REGISTER(shutdown_pre_sync, geom_shutdown, ((void*)0),
  SHUTDOWN_PRI_FIRST);
}
