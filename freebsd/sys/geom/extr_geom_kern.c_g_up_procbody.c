
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PRIBIO ;
 int g_io_schedule_up (int ) ;
 int g_up_td ;
 int sched_prio (int ,int ) ;
 int thread_lock (int ) ;
 int thread_unlock (int ) ;

__attribute__((used)) static void
g_up_procbody(void *arg)
{

 thread_lock(g_up_td);
 sched_prio(g_up_td, PRIBIO);
 thread_unlock(g_up_td);
 for(;;) {
  g_io_schedule_up(g_up_td);
 }
}
