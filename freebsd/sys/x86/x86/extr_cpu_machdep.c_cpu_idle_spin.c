
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sbintime_t ;
struct TYPE_2__ {int idle_state; } ;


 TYPE_1__* PCPU_PTR (int ) ;
 int STATE_RUNNING ;
 int atomic_store_int (int*,int ) ;
 int cpu_spinwait () ;
 int monitorbuf ;
 scalar_t__ sched_runnable () ;

__attribute__((used)) static void
cpu_idle_spin(sbintime_t sbt)
{
 int *state;
 int i;

 state = &PCPU_PTR(monitorbuf)->idle_state;
 atomic_store_int(state, STATE_RUNNING);






 for (i = 0; i < 1000; i++) {
  if (sched_runnable())
   return;
  cpu_spinwait();
 }
}
