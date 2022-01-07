
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct pcpu_state {int now; } ;
typedef int sbintime_t ;


 int CTR3 (int ,char*,int ,int,int ) ;
 struct pcpu_state* DPCPU_PTR (int ) ;
 int FILTER_HANDLED ;
 int FILTER_STRAY ;
 int KTR_SPARE2 ;
 scalar_t__ busy ;
 int curcpu ;
 scalar_t__ doconfigtimer () ;
 int handleevents (int,int ) ;
 int timerstate ;

int
hardclockintr(void)
{
 sbintime_t now;
 struct pcpu_state *state;
 int done;

 if (doconfigtimer() || busy)
  return (FILTER_HANDLED);
 state = DPCPU_PTR(timerstate);
 now = state->now;
 CTR3(KTR_SPARE2, "ipi  at %d:    now  %d.%08x",
     curcpu, (int)(now >> 32), (u_int)(now & 0xffffffff));
 done = handleevents(now, 0);
 return (done ? FILTER_HANDLED : FILTER_STRAY);
}
