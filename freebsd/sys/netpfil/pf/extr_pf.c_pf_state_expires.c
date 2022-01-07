
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int64_t ;
typedef scalar_t__ u_int32_t ;
struct TYPE_4__ {TYPE_3__* ptr; } ;
struct pf_state {size_t timeout; scalar_t__ expire; TYPE_1__ rule; } ;
struct TYPE_6__ {scalar_t__* timeout; int states_cur; } ;
struct TYPE_5__ {scalar_t__ states; } ;


 int KASSERT (int,char*) ;
 size_t PFTM_ADAPTIVE_END ;
 size_t PFTM_ADAPTIVE_START ;
 size_t PFTM_MAX ;
 size_t PFTM_PURGE ;
 size_t PFTM_UNLINKED ;
 TYPE_3__ V_pf_default_rule ;
 TYPE_2__ V_pf_status ;
 scalar_t__ counter_u64_fetch (int ) ;
 scalar_t__ time_uptime ;

u_int32_t
pf_state_expires(const struct pf_state *state)
{
 u_int32_t timeout;
 u_int32_t start;
 u_int32_t end;
 u_int32_t states;


 if (state->timeout == PFTM_PURGE)
  return (time_uptime);
 KASSERT(state->timeout != PFTM_UNLINKED,
     ("pf_state_expires: timeout == PFTM_UNLINKED"));
 KASSERT((state->timeout < PFTM_MAX),
     ("pf_state_expires: timeout > PFTM_MAX"));
 timeout = state->rule.ptr->timeout[state->timeout];
 if (!timeout)
  timeout = V_pf_default_rule.timeout[state->timeout];
 start = state->rule.ptr->timeout[PFTM_ADAPTIVE_START];
 if (start && state->rule.ptr != &V_pf_default_rule) {
  end = state->rule.ptr->timeout[PFTM_ADAPTIVE_END];
  states = counter_u64_fetch(state->rule.ptr->states_cur);
 } else {
  start = V_pf_default_rule.timeout[PFTM_ADAPTIVE_START];
  end = V_pf_default_rule.timeout[PFTM_ADAPTIVE_END];
  states = V_pf_status.states;
 }
 if (end && states > start && start < end) {
  if (states < end) {
   timeout = (u_int64_t)timeout * (end - states) /
       (end - start);
   return (state->expire + timeout);
  }
  else
   return (time_uptime);
 }
 return (state->expire + timeout);
}
