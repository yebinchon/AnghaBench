
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct turnstile {int * ts_blocked; } ;
struct thread {scalar_t__ td_priority; } ;


 struct thread* TAILQ_FIRST (int *) ;
 size_t TS_EXCLUSIVE_QUEUE ;
 size_t TS_SHARED_QUEUE ;

__attribute__((used)) static struct thread *
turnstile_first_waiter(struct turnstile *ts)
{
 struct thread *std, *xtd;

 std = TAILQ_FIRST(&ts->ts_blocked[TS_SHARED_QUEUE]);
 xtd = TAILQ_FIRST(&ts->ts_blocked[TS_EXCLUSIVE_QUEUE]);
 if (xtd == ((void*)0) || (std != ((void*)0) && std->td_priority < xtd->td_priority))
  return (std);
 return (xtd);
}
