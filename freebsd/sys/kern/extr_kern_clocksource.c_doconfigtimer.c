
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu_state {int handle; int action; } ;
typedef int sbintime_t ;


 struct pcpu_state* DPCPU_PTR (int ) ;
 int ET_HW_LOCK (struct pcpu_state*) ;
 int ET_HW_UNLOCK (struct pcpu_state*) ;
 int atomic_load_acq_int (int *) ;
 scalar_t__ atomic_readandclear_int (int *) ;
 int atomic_store_rel_int (int *,int ) ;
 int busy ;
 int et_stop (int ) ;
 int handleevents (int ,int ) ;
 int loadtimer (int ,int) ;
 int sbinuptime () ;
 int timer ;
 int timerstate ;

__attribute__((used)) static int
doconfigtimer(void)
{
 sbintime_t now;
 struct pcpu_state *state;

 state = DPCPU_PTR(timerstate);
 switch (atomic_load_acq_int(&state->action)) {
 case 1:
  now = sbinuptime();
  ET_HW_LOCK(state);
  loadtimer(now, 1);
  ET_HW_UNLOCK(state);
  state->handle = 0;
  atomic_store_rel_int(&state->action, 0);
  return (1);
 case 2:
  ET_HW_LOCK(state);
  et_stop(timer);
  ET_HW_UNLOCK(state);
  state->handle = 0;
  atomic_store_rel_int(&state->action, 0);
  return (1);
 }
 if (atomic_readandclear_int(&state->handle) && !busy) {
  now = sbinuptime();
  handleevents(now, 0);
  return (1);
 }
 return (0);
}
