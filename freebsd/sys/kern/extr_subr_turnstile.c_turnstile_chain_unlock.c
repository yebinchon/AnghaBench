
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct turnstile_chain {int tc_lock; } ;
struct lock_object {int dummy; } ;


 struct turnstile_chain* TC_LOOKUP (struct lock_object*) ;
 int mtx_unlock_spin (int *) ;

void
turnstile_chain_unlock(struct lock_object *lock)
{
 struct turnstile_chain *tc;

 tc = TC_LOOKUP(lock);
 mtx_unlock_spin(&tc->tc_lock);
}
