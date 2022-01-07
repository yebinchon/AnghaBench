
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sbintime_t ;
struct TYPE_2__ {int idle_state; } ;


 TYPE_1__* PCPU_PTR (int ) ;
 int STATE_RUNNING ;
 int STATE_SLEEPING ;
 int acpi_cpu_c1 () ;
 int atomic_store_int (int*,int ) ;
 int disable_intr () ;
 int enable_intr () ;
 int monitorbuf ;
 scalar_t__ sched_runnable () ;

__attribute__((used)) static void
cpu_idle_hlt(sbintime_t sbt)
{
 int *state;

 state = &PCPU_PTR(monitorbuf)->idle_state;
 atomic_store_int(state, STATE_SLEEPING);
 disable_intr();
 if (sched_runnable())
  enable_intr();
 else
  acpi_cpu_c1();
 atomic_store_int(state, STATE_RUNNING);
}
