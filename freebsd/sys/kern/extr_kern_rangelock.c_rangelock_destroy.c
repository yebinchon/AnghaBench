
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rangelock {int rl_waiters; } ;


 int KASSERT (int ,char*) ;
 int TAILQ_EMPTY (int *) ;

void
rangelock_destroy(struct rangelock *lock)
{

 KASSERT(TAILQ_EMPTY(&lock->rl_waiters), ("Dangling waiters"));
}
