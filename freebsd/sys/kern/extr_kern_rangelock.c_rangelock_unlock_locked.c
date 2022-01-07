
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rl_q_entry {int dummy; } ;
struct rangelock {int rl_waiters; struct rl_q_entry* rl_currdep; } ;
struct mtx {int dummy; } ;
struct TYPE_2__ {struct rl_q_entry* td_rlqe; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int MPASS (int) ;
 int * TAILQ_NEXT (struct rl_q_entry*,int ) ;
 int TAILQ_REMOVE (int *,struct rl_q_entry*,int ) ;
 TYPE_1__* curthread ;
 int mtx_assert (struct mtx*,int ) ;
 int mtx_unlock (struct mtx*) ;
 int rangelock_calc_block (struct rangelock*) ;
 int rl_q_link ;
 int rlqentry_free (struct rl_q_entry*) ;

__attribute__((used)) static void
rangelock_unlock_locked(struct rangelock *lock, struct rl_q_entry *entry,
    struct mtx *ilk, bool do_calc_block)
{

 MPASS(lock != ((void*)0) && entry != ((void*)0) && ilk != ((void*)0));
 mtx_assert(ilk, MA_OWNED);

 if (!do_calc_block) {
  if (lock->rl_currdep == entry) {
   KASSERT(TAILQ_NEXT(lock->rl_currdep, rl_q_link) == ((void*)0),
       ("rangelock_enqueue: next entry not NULL"));
   lock->rl_currdep = ((void*)0);
  }
 } else
  KASSERT(entry != lock->rl_currdep, ("stuck currdep"));

 TAILQ_REMOVE(&lock->rl_waiters, entry, rl_q_link);
 if (do_calc_block)
  rangelock_calc_block(lock);
 mtx_unlock(ilk);
 if (curthread->td_rlqe == ((void*)0))
  curthread->td_rlqe = entry;
 else
  rlqentry_free(entry);
}
