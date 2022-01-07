
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PRIBIO ;
 int g_event_td ;
 int g_run_events () ;
 int sched_prio (int ,int ) ;
 int thread_lock (int ) ;
 int thread_unlock (int ) ;

__attribute__((used)) static void
g_event_procbody(void *arg)
{

 thread_lock(g_event_td);
 sched_prio(g_event_td, PRIBIO);
 thread_unlock(g_event_td);
 g_run_events();

}
