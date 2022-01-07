
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rangelock {int * rl_currdep; int rl_waiters; } ;


 int TAILQ_INIT (int *) ;

void
rangelock_init(struct rangelock *lock)
{

 TAILQ_INIT(&lock->rl_waiters);
 lock->rl_currdep = ((void*)0);
}
