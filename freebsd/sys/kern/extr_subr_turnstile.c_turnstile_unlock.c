
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct turnstile_chain {int tc_lock; } ;
struct turnstile {int * ts_lockobj; int ts_lock; } ;
struct lock_object {int dummy; } ;
struct TYPE_2__ {struct turnstile* td_turnstile; } ;


 int MA_OWNED ;
 struct turnstile_chain* TC_LOOKUP (struct lock_object*) ;
 TYPE_1__* curthread ;
 int mtx_assert (int *,int ) ;
 int mtx_unlock_spin (int *) ;

void
turnstile_unlock(struct turnstile *ts, struct lock_object *lock)
{
 struct turnstile_chain *tc;

 mtx_assert(&ts->ts_lock, MA_OWNED);
 mtx_unlock_spin(&ts->ts_lock);
 if (ts == curthread->td_turnstile)
  ts->ts_lockobj = ((void*)0);
 tc = TC_LOOKUP(lock);
 mtx_unlock_spin(&tc->tc_lock);
}
