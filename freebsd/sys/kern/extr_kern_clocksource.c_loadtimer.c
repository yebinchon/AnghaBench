
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u_int ;
struct pcpu_state {int nexttick; } ;
typedef int sbintime_t ;
struct TYPE_3__ {int et_flags; } ;


 int CTR4 (int ,char*,int ,int,int ,int) ;
 int CTR5 (int ,char*,int ,int,int ,int,int ) ;
 struct pcpu_state* DPCPU_PTR (int ) ;
 int ET_FLAGS_PERCPU ;
 int KTR_SPARE2 ;
 int curcpu ;
 int et_start (TYPE_1__*,int,int) ;
 int getnextevent () ;
 int nexttick ;
 scalar_t__ periodic ;
 TYPE_1__* timer ;
 int timerperiod ;
 int timerstate ;

__attribute__((used)) static void
loadtimer(sbintime_t now, int start)
{
 struct pcpu_state *state;
 sbintime_t new;
 sbintime_t *next;
 uint64_t tmp;
 int eq;

 if (timer->et_flags & ET_FLAGS_PERCPU) {
  state = DPCPU_PTR(timerstate);
  next = &state->nexttick;
 } else
  next = &nexttick;
 if (periodic) {
  if (start) {




   tmp = now % timerperiod;
   new = timerperiod - tmp;
   if (new < tmp)
    new += timerperiod;
   CTR5(KTR_SPARE2, "load p at %d:   now %d.%08x first in %d.%08x",
       curcpu, (int)(now >> 32), (u_int)(now & 0xffffffff),
       (int)(new >> 32), (u_int)(new & 0xffffffff));
   *next = new + now;
   et_start(timer, new, timerperiod);
  }
 } else {
  new = getnextevent();
  eq = (new == *next);
  CTR4(KTR_SPARE2, "load at %d:    next %d.%08x eq %d",
      curcpu, (int)(new >> 32), (u_int)(new & 0xffffffff), eq);
  if (!eq) {
   *next = new;
   et_start(timer, new - now, 0);
  }
 }
}
