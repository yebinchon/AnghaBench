
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct thread {TYPE_1__* td_proc; int td_pri_class; } ;
struct TYPE_5__ {int ts_ltick; int ts_ftick; scalar_t__ ts_ticks; } ;
struct TYPE_4__ {scalar_t__ p_nice; } ;


 int KASSERT (int,char*) ;
 scalar_t__ PRI_BASE (int ) ;
 int PRI_MAX_BATCH ;
 int PRI_MAX_INTERACT ;
 int PRI_MIN_BATCH ;
 int PRI_MIN_INTERACT ;
 scalar_t__ PRI_TIMESHARE ;
 int SCHED_PRI_MIN ;
 scalar_t__ SCHED_PRI_NICE (scalar_t__) ;
 scalar_t__ SCHED_PRI_RANGE ;
 int SCHED_PRI_TICKS (TYPE_2__*) ;
 int imax (int ,scalar_t__) ;
 scalar_t__ min (int ,scalar_t__) ;
 int sched_interact ;
 scalar_t__ sched_interact_score (struct thread*) ;
 int sched_user_prio (struct thread*,int) ;
 TYPE_2__* td_get_sched (struct thread*) ;

__attribute__((used)) static void
sched_priority(struct thread *td)
{
 int score;
 int pri;

 if (PRI_BASE(td->td_pri_class) != PRI_TIMESHARE)
  return;
 score = imax(0, sched_interact_score(td) + td->td_proc->p_nice);
 if (score < sched_interact) {
  pri = PRI_MIN_INTERACT;
  pri += ((PRI_MAX_INTERACT - PRI_MIN_INTERACT + 1) /
      sched_interact) * score;
  KASSERT(pri >= PRI_MIN_INTERACT && pri <= PRI_MAX_INTERACT,
      ("sched_priority: invalid interactive priority %d score %d",
      pri, score));
 } else {
  pri = SCHED_PRI_MIN;
  if (td_get_sched(td)->ts_ticks)
   pri += min(SCHED_PRI_TICKS(td_get_sched(td)),
       SCHED_PRI_RANGE - 1);
  pri += SCHED_PRI_NICE(td->td_proc->p_nice);
  KASSERT(pri >= PRI_MIN_BATCH && pri <= PRI_MAX_BATCH,
      ("sched_priority: invalid priority %d: nice %d, "
      "ticks %d ftick %d ltick %d tick pri %d",
      pri, td->td_proc->p_nice, td_get_sched(td)->ts_ticks,
      td_get_sched(td)->ts_ftick, td_get_sched(td)->ts_ltick,
      SCHED_PRI_TICKS(td_get_sched(td))));
 }
 sched_user_prio(td, pri);

 return;
}
