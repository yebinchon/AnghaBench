
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct turnstile {struct thread* ts_owner; } ;
struct thread {int td_contested; TYPE_1__* td_proc; } ;
struct TYPE_2__ {scalar_t__ p_magic; } ;


 int LIST_INSERT_HEAD (int *,struct turnstile*,int ) ;
 int MA_OWNED ;
 int MPASS (int) ;
 scalar_t__ P_MAGIC ;
 int mtx_assert (int *,int ) ;
 int td_contested_lock ;
 int ts_link ;

__attribute__((used)) static void
turnstile_setowner(struct turnstile *ts, struct thread *owner)
{

 mtx_assert(&td_contested_lock, MA_OWNED);
 MPASS(ts->ts_owner == ((void*)0));


 if (owner == ((void*)0))
  return;

 MPASS(owner->td_proc->p_magic == P_MAGIC);
 ts->ts_owner = owner;
 LIST_INSERT_HEAD(&owner->td_contested, ts, ts_link);
}
