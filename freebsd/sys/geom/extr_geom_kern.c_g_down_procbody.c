
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PRIBIO ;
 int g_down_td ;
 int g_io_schedule_down (int ) ;
 int sched_prio (int ,int ) ;
 int thread_lock (int ) ;
 int thread_unlock (int ) ;

__attribute__((used)) static void
g_down_procbody(void *arg)
{

 thread_lock(g_down_td);
 sched_prio(g_down_td, PRIBIO);
 thread_unlock(g_down_td);
 for(;;) {
  g_io_schedule_down(g_down_td);
 }
}
