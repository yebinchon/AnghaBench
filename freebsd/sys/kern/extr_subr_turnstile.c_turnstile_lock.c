
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct turnstile_chain {int tc_lock; } ;
struct turnstile {struct thread* ts_owner; int ts_lock; struct lock_object* ts_lockobj; } ;
struct thread {int dummy; } ;
struct lock_object {int dummy; } ;


 struct turnstile_chain* TC_LOOKUP (struct lock_object*) ;
 scalar_t__ __predict_false (int) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;

bool
turnstile_lock(struct turnstile *ts, struct lock_object **lockp,
    struct thread **tdp)
{
 struct turnstile_chain *tc;
 struct lock_object *lock;

 if ((lock = ts->ts_lockobj) == ((void*)0))
  return (0);
 tc = TC_LOOKUP(lock);
 mtx_lock_spin(&tc->tc_lock);
 mtx_lock_spin(&ts->ts_lock);
 if (__predict_false(lock != ts->ts_lockobj)) {
  mtx_unlock_spin(&tc->tc_lock);
  mtx_unlock_spin(&ts->ts_lock);
  return (0);
 }
 *lockp = lock;
 *tdp = ts->ts_owner;
 return (1);
}
