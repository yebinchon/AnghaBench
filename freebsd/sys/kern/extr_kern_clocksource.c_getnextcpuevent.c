
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct pcpu_state {scalar_t__ nexthard; scalar_t__ nextcall; scalar_t__ nextstat; scalar_t__ nextprof; } ;
typedef scalar_t__ sbintime_t ;


 scalar_t__ CPU_FIRST () ;
 struct pcpu_state* DPCPU_PTR (int ) ;
 scalar_t__ curcpu ;
 int hz ;
 scalar_t__ profiling ;
 int tc_min_ticktock_freq ;
 int tick_sbt ;
 int timerstate ;

__attribute__((used)) static sbintime_t
getnextcpuevent(int idle)
{
 sbintime_t event;
 struct pcpu_state *state;
 u_int hardfreq;

 state = DPCPU_PTR(timerstate);

 event = state->nexthard;
 if (idle) {
  hardfreq = (u_int)hz / 2;
  if (tc_min_ticktock_freq > 2



      )
   hardfreq = hz / tc_min_ticktock_freq;
  if (hardfreq > 1)
   event += tick_sbt * (hardfreq - 1);
 }

 if (event > state->nextcall)
  event = state->nextcall;
 if (!idle) {
  if (event > state->nextstat)
   event = state->nextstat;
  if (profiling && event > state->nextprof)
   event = state->nextprof;
 }
 return (event);
}
