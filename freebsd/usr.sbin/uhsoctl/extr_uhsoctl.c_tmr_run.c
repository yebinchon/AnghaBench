
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timers {scalar_t__ res; int head; } ;
struct timer_entry {scalar_t__ timeout; int arg; int id; int (* func ) (int ,int ) ;} ;


 struct timer_entry* TAILQ_FIRST (int *) ;
 struct timer_entry* TAILQ_NEXT (struct timer_entry*,int ) ;
 int TAILQ_REMOVE (int *,struct timer_entry*,int ) ;
 int free (struct timer_entry*) ;
 int next ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
tmr_run(struct timers *tmrs)
{
 struct timer_entry *te, *te2;

 te = TAILQ_FIRST(&tmrs->head);
 if (te == ((void*)0))
  return;

 te->timeout -= tmrs->res;
 while (te->timeout <= 0) {
  te2 = TAILQ_NEXT(te, next);
  TAILQ_REMOVE(&tmrs->head, te, next);
  te->func(te->id, te->arg);
  free(te);
  te = te2;
  if (te == ((void*)0))
   break;
 }
}
