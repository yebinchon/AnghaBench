
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct trapframe {int dummy; } ;
struct pcpu_state {int nexthard; int nextstat; int nextprof; int nextcallopt; int nextcall; int nextevent; scalar_t__ idle; } ;
typedef int sbintime_t ;
struct TYPE_4__ {struct trapframe* td_intr_frame; } ;
struct TYPE_3__ {int et_flags; } ;


 int CTR3 (int ,char*,int ,int,int ) ;
 void* DPCPU_PTR (int ) ;
 int ET_FLAGS_PERCPU ;
 int ET_HW_LOCK (struct pcpu_state*) ;
 int ET_HW_UNLOCK (struct pcpu_state*) ;
 int KTR_SPARE2 ;
 int SBT_MAX ;
 int TRAPF_PC (struct trapframe*) ;
 int TRAPF_USERMODE (struct trapframe*) ;
 int busy ;
 int callout_process (int) ;
 int curcpu ;
 TYPE_2__* curthread ;
 int getnextcpuevent (int ) ;
 int hardclock (int,int) ;
 int hardclocktime ;
 int loadtimer (int,int) ;
 int profclock (int,int,int ) ;
 scalar_t__ profiling ;
 int profperiod ;
 int statclock (int,int) ;
 int statperiod ;
 int tick_sbt ;
 TYPE_1__* timer ;
 int timerstate ;

__attribute__((used)) static int
handleevents(sbintime_t now, int fake)
{
 sbintime_t t, *hct;
 struct trapframe *frame;
 struct pcpu_state *state;
 int usermode;
 int done, runs;

 CTR3(KTR_SPARE2, "handle at %d:  now  %d.%08x",
     curcpu, (int)(now >> 32), (u_int)(now & 0xffffffff));
 done = 0;
 if (fake) {
  frame = ((void*)0);
  usermode = 0;
 } else {
  frame = curthread->td_intr_frame;
  usermode = TRAPF_USERMODE(frame);
 }

 state = DPCPU_PTR(timerstate);

 runs = 0;
 while (now >= state->nexthard) {
  state->nexthard += tick_sbt;
  runs++;
 }
 if (runs) {
  hct = DPCPU_PTR(hardclocktime);
  *hct = state->nexthard - tick_sbt;
  if (fake < 2) {
   hardclock(runs, usermode);
   done = 1;
  }
 }
 runs = 0;
 while (now >= state->nextstat) {
  state->nextstat += statperiod;
  runs++;
 }
 if (runs && fake < 2) {
  statclock(runs, usermode);
  done = 1;
 }
 if (profiling) {
  runs = 0;
  while (now >= state->nextprof) {
   state->nextprof += profperiod;
   runs++;
  }
  if (runs && !fake) {
   profclock(runs, usermode, TRAPF_PC(frame));
   done = 1;
  }
 } else
  state->nextprof = state->nextstat;
 if (now >= state->nextcallopt || now >= state->nextcall) {
  state->nextcall = state->nextcallopt = SBT_MAX;
  callout_process(now);
 }

 t = getnextcpuevent(0);
 ET_HW_LOCK(state);
 if (!busy) {
  state->idle = 0;
  state->nextevent = t;
  loadtimer(now, (fake == 2) &&
      (timer->et_flags & ET_FLAGS_PERCPU));
 }
 ET_HW_UNLOCK(state);
 return (done);
}
