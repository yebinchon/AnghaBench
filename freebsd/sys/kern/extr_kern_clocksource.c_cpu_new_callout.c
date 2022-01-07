
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct pcpu_state {int nextcallopt; int nextcall; int nextevent; int handle; } ;
typedef int sbintime_t ;
struct TYPE_2__ {int et_flags; } ;


 int CPU_ABSENT (int) ;
 int CTR6 (int ,char*,int,int,int,int ,int,int ) ;
 struct pcpu_state* DPCPU_ID_PTR (int,int ) ;
 int ET_FLAGS_PERCPU ;
 int ET_HW_LOCK (struct pcpu_state*) ;
 int ET_HW_UNLOCK (struct pcpu_state*) ;
 int IPI_HARDCLOCK ;
 int KASSERT (int,char*) ;
 int KTR_SPARE2 ;
 scalar_t__ busy ;
 int curcpu ;
 int ipi_cpu (int,int ) ;
 int loadtimer (int ,int ) ;
 scalar_t__ periodic ;
 int sbinuptime () ;
 TYPE_1__* timer ;
 int timerstate ;

void
cpu_new_callout(int cpu, sbintime_t bt, sbintime_t bt_opt)
{
 struct pcpu_state *state;


 if (busy)
  return;
 CTR6(KTR_SPARE2, "new co at %d:    on %d at %d.%08x - %d.%08x",
     curcpu, cpu, (int)(bt_opt >> 32), (u_int)(bt_opt & 0xffffffff),
     (int)(bt >> 32), (u_int)(bt & 0xffffffff));

 KASSERT(!CPU_ABSENT(cpu), ("Absent CPU %d", cpu));
 state = DPCPU_ID_PTR(cpu, timerstate);
 ET_HW_LOCK(state);
 state->nextcallopt = bt_opt;
 if (bt >= state->nextcall)
  goto done;
 state->nextcall = bt;

 if (bt >= state->nextevent)
  goto done;
 state->nextevent = bt;

 if (periodic)
  goto done;

 if ((timer->et_flags & ET_FLAGS_PERCPU) == 0 || cpu == curcpu) {
  loadtimer(sbinuptime(), 0);
done:
  ET_HW_UNLOCK(state);
  return;
 }

 state->handle = 1;
 ET_HW_UNLOCK(state);



}
