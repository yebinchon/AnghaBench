
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct monitorbuf {int idle_state; } ;
struct TYPE_2__ {struct monitorbuf pc_monitorbuf; } ;





 int atomic_load_int (int*) ;
 int atomic_store_int (int*,int) ;
 int cpu_idle_apl31_workaround ;
 int panic (char*) ;
 TYPE_1__* pcpu_find (int) ;

int
cpu_idle_wakeup(int cpu)
{
 struct monitorbuf *mb;
 int *state;

 mb = &pcpu_find(cpu)->pc_monitorbuf;
 state = &mb->idle_state;
 switch (atomic_load_int(state)) {
 case 128:
  return (0);
 case 130:
  atomic_store_int(state, 129);
  return (cpu_idle_apl31_workaround ? 0 : 1);
 case 129:
  return (1);
 default:
  panic("bad monitor state");
  return (1);
 }
}
