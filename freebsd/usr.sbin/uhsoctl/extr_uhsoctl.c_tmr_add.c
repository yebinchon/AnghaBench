
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmr_cb ;
struct timers {int head; } ;
struct timer_entry {int timeout; int id; void* arg; int func; } ;


 scalar_t__ TAILQ_EMPTY (int *) ;
 struct timer_entry* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_AFTER (int *,struct timer_entry*,struct timer_entry*,int ) ;
 int TAILQ_INSERT_HEAD (int *,struct timer_entry*,int ) ;
 struct timer_entry* TAILQ_NEXT (struct timer_entry*,int ) ;
 struct timer_entry* malloc (int) ;
 int memset (struct timer_entry*,int ,int) ;
 int next ;

__attribute__((used)) static void
tmr_add(struct timers *tmrs, int id, int timeout, tmr_cb func, void *arg)
{
 struct timer_entry *te, *te2, *te3;

 te = malloc(sizeof(struct timer_entry));
 memset(te, 0, sizeof(struct timer_entry));

 te->timeout = timeout;
 te->func = func;
 te->arg = arg;
 te->id = id;

 te2 = TAILQ_FIRST(&tmrs->head);

 if (TAILQ_EMPTY(&tmrs->head)) {
  TAILQ_INSERT_HEAD(&tmrs->head, te, next);
 } else if (te->timeout < te2->timeout) {
  te2->timeout -= te->timeout;
  TAILQ_INSERT_HEAD(&tmrs->head, te, next);
 } else {
  while (te->timeout >= te2->timeout) {
   te->timeout -= te2->timeout;
   te3 = TAILQ_NEXT(te2, next);
   if (te3 == ((void*)0) || te3->timeout > te->timeout)
    break;
   te2 = te3;
  }
  TAILQ_INSERT_AFTER(&tmrs->head, te2, te, next);
 }
}
